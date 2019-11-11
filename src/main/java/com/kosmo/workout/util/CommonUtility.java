package com.kosmo.workout.util;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.json.simple.JSONObject;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;


public class CommonUtility {

	
	public static JSONObject mapkeyCrawling(String mapkey, HttpServletRequest req) throws IOException {
		
		JSONObject mapinfo = new JSONObject();
		
		
		//맵키로 상호명 구함
		String base_url="https://place.map.kakao.com/"+mapkey;
		Document doc=Jsoup.connect(base_url).get();
		Elements result=doc.select("head > meta:nth-child(4)");
		String title=result.get(0).attr("content");
		//맵키로 상호명 구함 끝
		
		//네이버로 검색
		base_url="https://search.naver.com/search.naver?sm=top_hty&fbm=1&ie=utf8&query="+title;
		doc=Jsoup.connect(base_url).get();
		result=doc.select("#sp_local_1 > div.tit_area > a");
		String href=result.get(0).attr("href");
		//네이버 검색 끝
		
		
		//검색으로 나오는 주소로 셀레니움 웹크롤링 시작
		String path=req.getSession().getServletContext().getRealPath("/");
		String webDriverPath=path+"resources"+File.separator+"webdriver"+File.separator+"chromedriver.exe";
		//드라이버 셋업
        ChromeOptions options = new ChromeOptions();
        options.setCapability("ignoreProtectedModeSettings", true);
        options.setHeadless(true);
		System.setProperty("webdriver.chrome.driver", webDriverPath);
        WebDriver driver= new ChromeDriver(options);	
		//드라이버 셋업 끝
		
		//웹크롤링 시작
		driver.get(href);
		
		mapinfo.put("addr", driver.findElement(By.xpath("//*[@id=\"container\"]/div/div[2]/dl/dd[1]/a")).getText());
		mapinfo.put("jibunAddr", driver.findElement(By.xpath("//*[@id=\"container\"]/div/div[2]/dl/dd[1]/p/a")).getText());
		mapinfo.put("tel", driver.findElement(By.xpath("//*[@id=\"container\"]/div/div[2]/dl/dd[2]")).getText());
		mapinfo.put("service", driver.findElement(By.xpath("//*[@id=\"_baseInfo\"]/div[1]/dl/dd[2]")).getText());
		mapinfo.put("content", driver.findElement(By.xpath("//*[@id=\"_baseInfo\"]/div[2]/p")).getText());
		mapinfo.put("otime", driver.findElement(By.xpath("//*[@id=\"_baseInfo\"]/div[1]/dl/dd[1]/ul")).getText());

		//이미지 URL 리스트 뽑아내기 시작
		java.util.List<WebElement> img_lis=driver.findElements(By.xpath("//*[@id=\"_imageViewer\"]/div[2]/div/ul/li"));
		String[] img_urls = new String[img_lis.size()];
		int i=0;
		for(WebElement img_li:img_lis) {
			img_urls[i]=img_li.findElement(By.tagName("a")).findElement(By.tagName("img")).getAttribute("data-origin");//<li>태그 안에 <a>태그, <a>태그 안에 <img>태그가 존재. img 태그 내 src 정보를 얻어낸다.	
			i++;
		}
		driver.close();

		mapinfo.put("img_urls", img_urls);
		
		//이미지 URL 뽑아내기 끝
		
		//웹크롤링 끝
		
        

		return mapinfo;
	}
	
	
}

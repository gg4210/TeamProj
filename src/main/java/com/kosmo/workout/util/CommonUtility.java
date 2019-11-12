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

import com.kosmo.workout.service.search.SearchBBSDTO;


public class CommonUtility {

	/*
	public static SearchBBSDTO mapkeyCrawling(String mapkey, HttpServletRequest req) throws IOException {		
	
		SearchBBSDTO mapinfo=new SearchBBSDTO();
		
		
		String base_url="https://place.map.kakao.com/"+mapkey;
		Document doc=Jsoup.connect(base_url).get();
		Elements result=doc.select("head > meta:nth-child(4)");
		String title=result.get(0).attr("content");
		
		String path=req.getSession().getServletContext().getRealPath("/");
		String webDriverPath=path+"resources"+File.separator+"webdriver"+File.separator+"chromedriver.exe";
        ChromeOptions options = new ChromeOptions();
        options.setCapability("ignoreProtectedModeSettings", true);
        options.setHeadless(true);
		System.setProperty("webdriver.chrome.driver", webDriverPath);
        WebDriver driver= new ChromeDriver(options);
		
		driver.get(base_url);
		
		mapinfo.setTitle(title);
		mapinfo.setMapkey(mapkey);
		mapinfo.setAddr(driver.findElement(By.xpath("//*[@id=\"mArticle\"]/div[1]/div[2]/div[1]/div/span[1]")).getText());
		mapinfo.setJibunAddr(driver.findElement(By.xpath("//*[@id=\"mArticle\"]/div[1]/div[2]/div[1]/div/span[2]/text()[2]")).getText());
		
		System.out.println(mapinfo.getTitle()+"/"+mapinfo.getMapkey()+"/"+mapinfo.getAddr()+"/"+mapinfo.getJibunAddr());
		
		/* 아래는 셀레니움으로 네이버 정보를 긁어본 것.
		base_url="https://search.naver.com/search.naver?sm=top_hty&fbm=1&ie=utf8&query="+title;
		doc=Jsoup.connect(base_url).get();
		result=doc.select("#sp_local_1 > div.tit_area > a");
		String href=result.get(0).attr("href");
		
			String path=req.getSession().getServletContext().getRealPath("/");
			String webDriverPath=path+"resources"+File.separator+"webdriver"+File.separator+"chromedriver.exe";
			//����̹� �¾�
	        ChromeOptions options = new ChromeOptions();
	        options.setCapability("ignoreProtectedModeSettings", true);
	        options.setHeadless(true);
			System.setProperty("webdriver.chrome.driver", webDriverPath);
	        WebDriver driver= new ChromeDriver(options);	
			//����̹� �¾� ��
			
			//��ũ�Ѹ� ����
			driver.get(href);
			
			mapinfo.setTitle(title);
			mapinfo.setMapkey(mapkey);
			mapinfo.setAddr(driver.findElement(By.xpath("//*[@id=\"container\"]/div/div[2]/dl/dd[1]/a")).getText());
			mapinfo.setJibunAddr(driver.findElement(By.xpath("//*[@id=\"container\"]/div/div[2]/dl/dd[1]/p/a")).getText().replace("지번", ""));
			mapinfo.setTel(driver.findElement(By.xpath("//*[@id=\"container\"]/div/div[2]/dl/dd[2]")).getText());
			mapinfo.setService(driver.findElement(By.xpath("//*[@id=\"_baseInfo\"]/div[1]/dl/dd[2]")).getText());
			mapinfo.setContent(driver.findElement(By.xpath("//*[@id=\"_baseInfo\"]/div[2]/p")).getText());
			mapinfo.setOtime(driver.findElement(By.xpath("//*[@id=\"_baseInfo\"]/div[1]/dl/dd[1]/ul")).getText());
	
			//�̹��� URL ����Ʈ �̾Ƴ��� ����
			java.util.List<WebElement> img_lis=driver.findElements(By.xpath("//*[@id=\"_imageViewer\"]/div[2]/div/ul/li"));
			String[] img_urls = new String[img_lis.size()];
			int i=0;
			for(WebElement img_li:img_lis) {
				img_urls[i]=img_li.findElement(By.tagName("a")).findElement(By.tagName("img")).getAttribute("data-origin");//<li>�±� �ȿ� <a>�±�, <a>�±� �ȿ� <img>�±װ� ����. img �±� �� src ������ ����.	
				i++;
			}
		mapinfo.setImg_urls(img_urls);
		driver.close();
		return null;
		
	}
	 */
}

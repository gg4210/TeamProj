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

	
	public static SearchBBSDTO mapkeyCrawling(String mapkey, String tel, HttpServletRequest req) throws IOException {		
	
		SearchBBSDTO mapinfo=new SearchBBSDTO();
		
		String base_url="https://place.map.kakao.com/"+mapkey;
		Document doc=Jsoup.connect(base_url).get();
		Elements result=doc.select("head > meta:nth-child(4)");
		String title=result.get(0).attr("content");		
						
		base_url="https://search.naver.com/search.naver?sm=top_hty&fbm=1&ie=utf8&query="+title;
		doc=Jsoup.connect(base_url).get();
		result=doc.select("#lcs_greenmap > div.local_map > div.detail");
		
		if(result.isEmpty()) { //검색결과가 없는 경우		
			return mapinfo;			
		}
		
		else { //객체 하나 혹은 리스트로 뽑히는 경우
			
			result=doc.select("#lcs_greenmap > div.local_map > div.detail > ul");//리스트일 경우
			
			if(result.isEmpty()) {//객체 하나
				
				//System.out.println("객체가 한개일 때");
				String href=doc.select("#sp_local_1 > div.tit_area > a").get(0).attr("href");
				mapinfo=seleniumCrawling(href,req);
				return mapinfo;
				
			}
			else {//리스트
				
				//System.out.println("객체가 여러개일 때");
				for(int i=1; i<8;i++) {// 1 ~ 7까지의  값을 얻어냄. 이 안에 값이 존재하지 않는다면 그냥 없는 정보라고 생각할 예정
					if(doc.select("#sp_local_"+i+" > dl > dd:nth-child(3) > span.tell").get(0).html()==tel) {
						String href=doc.select("#sp_local_"+i+" > dl > dd.txt_inline > a:nth-child(1)").get(0).attr("href");
						System.out.println(href);
						mapinfo=seleniumCrawling(href, req);
					}
				}
				return mapinfo;
			}			
		}

	}
	
	
	public static SearchBBSDTO seleniumCrawling(String href, HttpServletRequest req) {
		
		SearchBBSDTO mapinfo=new SearchBBSDTO();
		
		//셀레니움 드라이버 path 알아내서 드라이버에 셋팅하기
		WebDriver driver=getWebDriver(req);
		//셀레니움 드라이버 path 알아내서 드라이버에 셋팅하기 끝
        
		//드라이버로 네이버 지도 뷰페이지 href 열게 함
		driver.get(href);
		
		mapinfo.setService(driver.findElement(By.xpath("//*[@id=\"_baseInfo\"]/div[1]/dl/dd[2]")).getText());//서비스
		mapinfo.setContent(driver.findElement(By.xpath("//*[@id=\"_baseInfo\"]/div[2]/p")).getText());//상세내용
		mapinfo.setOtime(driver.findElement(By.xpath("//*[@id=\"_baseInfo\"]/div[1]/dl/dd[1]/ul")).getText());//운영시간
		//긁어옴
		
		//이미지 url 리스트 뽑아내기
		java.util.List<WebElement> img_lis=driver.findElements(By.xpath("//*[@id=\"_imageViewer\"]/div[2]/div/ul/li"));
		String[] img_urls = new String[img_lis.size()];
		int i=0;
		for(WebElement img_li:img_lis) {
			img_urls[i]=img_li.findElement(By.tagName("a")).findElement(By.tagName("img")).getAttribute("data-origin");//<li>�±� �ȿ� <a>�±�, <a>�±� �ȿ� <img>�±װ� ����. img �±� �� src ������ ����.	
			i++;
		}
		//이미지 url 리스트 뽑아내기 끝

		mapinfo.setImg_urls(img_urls);
		
		driver.close();//driver 닫기
		
		return mapinfo;
		
	}
	
	public static WebDriver getWebDriver(HttpServletRequest req) {
		String path=req.getSession().getServletContext().getRealPath("/");
		String webDriverPath=path+"resources"+File.separator+"webdriver"+File.separator+"chromedriver.exe";
        ChromeOptions options = new ChromeOptions();
        options.setCapability("ignoreProtectedModeSettings", true);
        options.setHeadless(true);
		System.setProperty("webdriver.chrome.driver", webDriverPath);
        WebDriver driver= new ChromeDriver(options);
		return driver;
	}
	
	 
}

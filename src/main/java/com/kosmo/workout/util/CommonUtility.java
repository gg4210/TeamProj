package com.kosmo.workout.util;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.json.simple.JSONArray;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;

import com.sun.xml.internal.bind.v2.schemagen.xmlschema.List;

public class CommonUtility {

	
	public static JSONArray mapkeyCrawling(String mapkey, HttpServletRequest req) throws IOException {
		
		//��Ű�� ��ȣ�� ����
		String base_url="https://place.map.kakao.com/"+mapkey;
		Document doc=Jsoup.connect(base_url).get();
		Elements result=doc.select("head > meta:nth-child(4)");
		String title=result.get(0).attr("content");
		//��Ű�� ��ȣ�� ���� ��
		
		//���̹��� �˻�
		base_url="https://search.naver.com/search.naver?sm=top_hty&fbm=1&ie=utf8&query="+title;
		doc=Jsoup.connect(base_url).get();
		result=doc.select("#sp_local_1 > div.tit_area > a");
		String href=result.get(0).attr("href");
		//���̹� �˻� ��
		
		
		//�˻����� ������ �ּҷ� �����Ͽ� ��ũ�Ѹ� ����
		String path=req.getSession().getServletContext().getRealPath("/");
		String webDriverPath=path+"resources"+File.separator+"webdriver"+File.separator+"chromedriver.exe";
		//����̹� �¾�
        ChromeOptions options = new ChromeOptions();
        options.setCapability("ignoreProtectedModeSettings", true);
        options.setHeadless(true);
        WebDriver driver= new ChromeDriver(options);	
		System.setProperty("webdriver.chrome.driver", webDriverPath);
		//����̹� �¾� ��
		
		//�ּҿ� �ִ� ��� ���� ��ũ�Ѹ�(�ϴ� ��)
		driver.get(href);
		String addr=driver.findElement(By.xpath("//*[@id=\"container\"]/div/div[2]/dl/dd[1]/a")).getText();
		String jibunAddr=driver.findElement(By.xpath("//*[@id=\"container\"]/div/div[2]/dl/dd[1]/p/a")).getText();
		String tel=driver.findElement(By.xpath("//*[@id=\"container\"]/div/div[2]/dl/dd[2]")).getText();
		
		System.out.println(String.format("�ּ�:%s,�����ּ�:%s,��ȭ��ȣ:%s", addr,jibunAddr,tel));
		
		
		driver.quit();
        

		return null;
	}
	
	
}

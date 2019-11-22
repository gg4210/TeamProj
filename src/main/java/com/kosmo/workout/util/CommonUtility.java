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
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartRequest;

import com.kosmo.workout.service.search.SearchBBSDTO;


public class CommonUtility {
	
	public static String getMapkeyFromCenterInfo(String addr, String name, HttpServletRequest req) throws IOException {
		
		String mapkey="";

		String base_url="https://search.daum.net/search?nil_suggest=btn&w=tot&DA=SBC&q="+addr+name;
		System.out.println(base_url);
		WebDriver driver=getWebDriver(req);
		
		driver.get(base_url);
		
		if(driver.findElement(By.xpath("//*[@id=\"poiColl\"]/div[2]/div[3]/ul/li/div[1]/div/a[1]"))!=null) {
			String href=driver.findElement(By.xpath("//*[@id=\"poiColl\"]/div[2]/div[3]/ul/li/div[1]/div/a[1]")).getAttribute("href");
			String[] split=href.split("/");
			mapkey=split[3];
			System.out.println(mapkey);
		}

		System.out.println("맵키:"+mapkey);
		driver.close();
		return mapkey;
	}	
	
	public static SearchBBSDTO mapkeyCrawling(String mapkey, String tel, HttpServletRequest req) throws IOException {		
	
		SearchBBSDTO mapinfo=new SearchBBSDTO();
		
		String base_url="https://place.map.kakao.com/"+mapkey;
		Document doc=Jsoup.connect(base_url).get();
		Elements result=doc.select("head > meta:nth-child(4)");
		String title=result.get(0).attr("content");		
						
		base_url="https://search.naver.com/search.naver?sm=top_hty&fbm=1&ie=utf8&query="+title;
		doc=Jsoup.connect(base_url).get();
		result=doc.select("#lcs_greenmap > div.local_map > div.detail");
		
		
		if(result.isEmpty() || tel=="" ) { //검색결과 혹은 전화번호가 없는 경우
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
				for(int i=1; i<9;i++) {// 1 ~ 7까지의  값을 얻어냄. 이 안에 값이 존재하지 않는다면 그냥 없는 정보라고 생각할 예정
					if(doc.select("#sp_local_"+i+" > dl > dd:nth-child(3) > span.tell").html()==tel) {
						String href=doc.select("#sp_local_"+i+" > dl > dd.txt_inline > a").get(0).attr("href");
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
	
	public static String ratingString (int avgRate) {
		String rate="";
		switch(avgRate){
			case 1:
				rate+="<i class='fas fa-star py-2 px-1 rate-popover amber-text' data-index='0' data-html='true' data-toggle='popover' data-placement='top' title='Very bad'></i>";
				rate+="<i class='fas fa-star py-2 px-1 rate-popover' data-index='0' data-html='true' data-toggle='popover' data-placement='top' title='Poor'></i>";
				rate+="<i class='fas fa-star py-2 px-1 rate-popover' data-index='0' data-html='true' data-toggle='popover' data-placement='top' title='OK'></i>";
				rate+="<i class='fas fa-star py-2 px-1 rate-popover' data-index='0' data-html='true' data-toggle='popover' data-placement='top' title='Good'></i>";
				rate+="<i class='fas fa-star py-2 px-1 rate-popover' data-index='0' data-html='true' data-toggle='popover' data-placement='top' title='Excellent'></i>("+avgRate+")";
				break;
			case 2:
				rate+="<i class='fas fa-star py-2 px-1 rate-popover amber-text' data-index='0' data-html='true' data-toggle='popover' data-placement='top' title='Very bad'></i>";
				rate+="<i class='fas fa-star py-2 px-1 rate-popover amber-text' data-index='0' data-html='true' data-toggle='popover' data-placement='top' title='Poor'></i>";
				rate+="<i class='fas fa-star py-2 px-1 rate-popover' data-index='0' data-html='true' data-toggle='popover' data-placement='top' title='OK'></i>";
				rate+="<i class='fas fa-star py-2 px-1 rate-popover' data-index='0' data-html='true' data-toggle='popover' data-placement='top' title='Good'></i>";
				rate+="<i class='fas fa-star py-2 px-1 rate-popover' data-index='0' data-html='true' data-toggle='popover' data-placement='top' title='Excellent'></i>("+avgRate+")";
				break;
			case 3:
				rate+="<i class='fas fa-star py-2 px-1 rate-popover amber-text' data-index='0' data-html='true' data-toggle='popover' data-placement='top' title='Very bad'></i>";
				rate+="<i class='fas fa-star py-2 px-1 rate-popover amber-text' data-index='0' data-html='true' data-toggle='popover' data-placement='top' title='Poor'></i>";
				rate+="<i class='fas fa-star py-2 px-1 rate-popover amber-text' data-index='0' data-html='true' data-toggle='popover' data-placement='top' title='OK'></i>";
				rate+="<i class='fas fa-star py-2 px-1 rate-popover' data-index='0' data-html='true' data-toggle='popover' data-placement='top' title='Good'></i>";
				rate+="<i class='fas fa-star py-2 px-1 rate-popover' data-index='0' data-html='true' data-toggle='popover' data-placement='top' title='Excellent'></i>("+avgRate+")";
				break;
			case 4:
				rate+="<i class='fas fa-star py-2 px-1 rate-popover amber-text' data-index='0' data-html='true' data-toggle='popover' data-placement='top' title='Very bad'></i>";
				rate+="<i class='fas fa-star py-2 px-1 rate-popover amber-text' data-index='0' data-html='true' data-toggle='popover' data-placement='top' title='Poor'></i>";
				rate+="<i class='fas fa-star py-2 px-1 rate-popover amber-text' data-index='0' data-html='true' data-toggle='popover' data-placement='top' title='OK'></i>";
				rate+="<i class='fas fa-star py-2 px-1 rate-popover amber-text' data-index='0' data-html='true' data-toggle='popover' data-placement='top' title='Good'></i>";
				rate+="<i class='fas fa-star py-2 px-1 rate-popover' data-index='0' data-html='true' data-toggle='popover' data-placement='top' title='Excellent'></i>("+avgRate+")";
				break;
			case 5:
				rate+="<i class='fas fa-star py-2 px-1 rate-popover amber-text' data-index='0' data-html='true' data-toggle='popover' data-placement='top' title='Very bad'></i>";
				rate+="<i class='fas fa-star py-2 px-1 rate-popover amber-text' data-index='0' data-html='true' data-toggle='popover' data-placement='top' title='Poor'></i>";
				rate+="<i class='fas fa-star py-2 px-1 rate-popover amber-text' data-index='0' data-html='true' data-toggle='popover' data-placement='top' title='OK'></i>";
				rate+="<i class='fas fa-star py-2 px-1 rate-popover amber-text' data-index='0' data-html='true' data-toggle='popover' data-placement='top' title='Good'></i>";
				rate+="<i class='fas fa-star py-2 px-1 rate-popover amber-text' data-index='0' data-html='true' data-toggle='popover' data-placement='top' title='Excellent'></i>("+avgRate+")";
				break;
			default:
				rate+="<i class='fas fa-star py-2 px-1 rate-popover' data-index='0' data-html='true' data-toggle='popover' data-placement='top' title='Very bad'></i>";
				rate+="<i class='fas fa-star py-2 px-1 rate-popover' data-index='0' data-html='true' data-toggle='popover' data-placement='top' title='Poor'></i>";
				rate+="<i class='fas fa-star py-2 px-1 rate-popover' data-index='0' data-html='true' data-toggle='popover' data-placement='top' title='OK'></i>";
				rate+="<i class='fas fa-star py-2 px-1 rate-popover' data-index='0' data-html='true' data-toggle='popover' data-placement='top' title='Good'></i>";
				rate+="<i class='fas fa-star py-2 px-1 rate-popover' data-index='0' data-html='true' data-toggle='popover' data-placement='top' title='Excellent'></i>("+avgRate+")";
		}//switch
		
		
		return rate;
	}	
	
	
	public static String Bookmarked(int isbookmarked,int countBooked) {///하트 별점 String
		
		String book="";		
		if(countBooked<3) {
			if(isbookmarked==1) {//북마크 이미 됐을 경우
				return book="<sec:authorize access=\"hasRole(\'ROLE_USER\')\"><i class=\"fas fa-heart fa-2x red-text\" style=\"cursor: pointer\" id=\"bookicon\"></i></sec:authorize>";
			}
			else {//안됐을 경우
				return book="<sec:authorize access=\"hasRole('ROLE_USER\')\"><i class=\"far fa-heart fa-2x red-text\" style=\"cursor: pointer\" id=\"bookicon\"></i></sec:authorize>";
			}
		}
		else {//최대 개수 초과
			if(isbookmarked==1) {
				return book="<sec:authorize access=\"hasRole(\'ROLE_USER\')\"><i class=\"fas fa-heart fa-2x red-text\" style=\"cursor: pointer\" id=\"bookicon\"></i></sec:authorize>";
			}
			else {
				return book="<sec:authorize access=\"hasRole(\'ROLE_USER\')\"><i class=\"far fa-heart fa-2x red-text\" style=\"cursor: pointer\" id=\"bookicon\"></i></sec:authorize>";
			}
		}
		
	}
	
	
	public static String isComplex(int countnum, int maxnum) {
		String complex="";
		try {
		complex="<h6 class=\"progress-title\">혼잡도</h6><div class=\"col-10 align-middle\"><div class=\"progress blue\">";
		complex+="<div class=\"progress-bar\" style=\"width:"+((countnum/maxnum)*100)+"%; background:#fe3b3b;\">";
		complex+="<div class=\"progress-value\">"+((countnum/maxnum)*100)+"%</div>";
		complex+="</div></div>";
		complex+="<div class=\"col-2 px-0\">";
		complex+="현재 "+countnum+"명이 이용중";
		complex+="</div>";
		}
		catch (ArithmeticException e) {
			complex="이 센터는 본 서비스를 제공하지 않습니다.";
		}
		return complex;
	}
	
	
	
	public static String pagingBootStrap4Style(int totalRecordCount, int pageSize, int blockPage, int nowPage, String page){
		
		String pagingStr="<nav><ul class=\"pagination pg-blue justify-content-center\">";
		
		//1.전체 페이지 구하기
		int totalPage= (int)(Math.ceil(((double)totalRecordCount/pageSize)));
		
		int intTemp = ((nowPage - 1) / blockPage) * blockPage + 1;

		//처음 및 이전을 위한 로직
		if(intTemp != 1){
			pagingStr+="<li class=\"page-item\">\r\n" + 
							"<a class=\"page-link\" href='"+page+"nowPage=1'>\r\n" + 
							"<span aria-hidden=\"true\">First</span>\r\n" + 
							"</a>\r\n" + 
						"</li>\r\n" + 
					"<li class=\"page-item\">\r\n" + 
					"<a class=\"page-link\" href='"+page+"nowPage="+(intTemp -blockPage)+"' >\r\n" + 
					"<span aria-hidden=\"true\">&lsaquo;</span>\r\n" + 
					"</a>\r\n" + 
					"</li>";   
		}
		
		//페이지 표시 제어를 위한 변수
		int blockCount = 1;
		
		//페이지를 뿌려주는 로직
		//블락 페이지 수만큼 혹은 마지막 페이지가 될때까지 페이지를 표시한다1 
		while(blockCount <= blockPage && intTemp <= totalPage){  // 페이지 오버 를 체크
				//현재 페이지를 의미함
			if(intTemp == nowPage){  
				pagingStr+="<li class=\"page-item active\"><a class=\"page-link\" href='#'>"+intTemp+"</a></li>";
			}
		     else
		    	 pagingStr+="<li class=\"page-item\"><a class=\"page-link\" href='"+page+"nowPage="+intTemp+"'>"+intTemp+"</a></li>";
		       
			intTemp = intTemp + 1;
			blockCount = blockCount + 1;
		
		}

		//다음 및 마지막을 위한 로직
			
		if(intTemp <= totalPage){
			pagingStr+="<li class=\"page-item\">\r\n" + 
					"<a class=\"page-link\" href='"+page+"nowPage="+intTemp+"'>\r\n" + 
					"<span aria-hidden=\"true\">&rsaquo;</span>\r\n" + 
					"</a>\r\n" + 
					"</li>\r\n" + 
					"<li class=\"page-item\">\r\n" + 
					"<a class=\"page-link\" href='"+page+"nowPage="+totalPage+"' >\r\n" + 
					"<span aria-hidden=\"true\">Last</span>\r\n" + 
					"</a>\r\n" + 
					"</li>";							   
		}
		
		pagingStr+="</ul></nav>";
		return pagingStr;
		
	}
	
	
	
	 
}

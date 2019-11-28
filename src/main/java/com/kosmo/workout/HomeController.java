package com.kosmo.workout;

import java.io.File;
import java.io.IOException;
import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.kosmo.workout.service.CSDTO;
import com.kosmo.workout.service.CSService;
import com.kosmo.workout.service.HealthMateDTO;
import com.kosmo.workout.service.HealthMateService;
import com.kosmo.workout.service.MyMateDTO;
import com.kosmo.workout.util.CommonUtility;


/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
		return "intro";
	}

	@Resource(name = "HealthMateService")
	private HealthMateService HealthMateService;
	@Resource(name = "CSService")
	private CSService CSService;
	
	@RequestMapping("/main.do")
	public String main(HttpServletRequest req, @RequestParam Map map,Model model) throws IOException {
		
		//메인페이지 운동메이트 뿌려주는 용도
		int total=HealthMateService.getTotalRecord(map);
		//System.out.println("total: "+total);
		model.addAttribute("MateTotal", total);
		List<HealthMateDTO> mateList=HealthMateService.selectList(map);
		model.addAttribute("MateList", mateList);
		
		//메인페이지 공지사항과 이벤트 뿌려주기
		List<CSDTO> homeNoticeList = CSService.homeNoticeSelectList(map);
		model.addAttribute("homeNoticeList", homeNoticeList);
		List<CSDTO> mainEventList = CSService.mainEventSelectList(map);
		model.addAttribute("mainEventList", mainEventList);
		/*
		String path=req.getSession().getServletContext().getRealPath("/");
		String webDriverPath=path+"resources"+File.separator+"webdriver"+File.separator+"chromedriver.exe";
        ChromeOptions options = new ChromeOptions();
        options.setCapability("ignoreProtectedModeSettings", true);
        options.setHeadless(true);
		System.setProperty("webdriver.chrome.driver", webDriverPath);
        WebDriver driver= new ChromeDriver(options);
        
		String url="https://www.youtube.com/results?search_query=%EC%9A%B4%EB%8F%99%ED%8C%81&sp=CAM%253D";
		driver.get(url);
		
		String title=driver.findElement(By.xpath("//*[@id=\"video-title\"]")).getText();
		System.out.println(title);

		driver.close();//driver 닫기
		*/
		
		return "index.tiles";
	}
	
	
}

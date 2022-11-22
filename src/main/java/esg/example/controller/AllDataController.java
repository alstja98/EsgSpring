package esg.example.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import esg.example.service.CsvService;

@Controller
@RequestMapping("/alldata")
public class AllDataController {
	
	@Autowired
	private CsvService csvService;
	
	@GetMapping("/index")
	public String goalldata() {
		return "alldata";
	}
	
	@RequestMapping(value="/table", method=RequestMethod.POST)
	@ResponseBody
	public ArrayList<String[]> showAllTable(){
		List<String []> allTable = csvService.readCsv("C:\\workspace\\esgjsp\\esgjsp\\src\\main\\resources\\static\\csv\\all_data.csv");
		ArrayList<String[]> allTable2 = new ArrayList<String[]>();
		
		for (String[] strings : allTable) {
			allTable2.add(strings);
		}
		
		System.out.println(allTable2.get(0));
		
		return allTable2;
	}
	
}

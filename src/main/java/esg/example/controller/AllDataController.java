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

import esg.example.dto.AlldataDto;
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
	public ArrayList<AlldataDto> showAllTable(){
		List<AlldataDto> allTable = csvService.readCsvArray("C:\\workspace\\esgjsp\\esgjsp\\src\\main\\resources\\static\\csv\\all_data.csv");
		ArrayList<AlldataDto> allTable2 = new ArrayList<AlldataDto>();
		
		for (AlldataDto data : allTable) {
			allTable2.add(data);
		}
		
		System.out.println(allTable2);
		
		return allTable2;
	}
	
}

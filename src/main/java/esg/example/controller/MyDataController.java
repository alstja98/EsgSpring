package esg.example.controller;


import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import esg.example.dto.MyDataDto;
import esg.example.service.CsvService;


@Controller
@RequestMapping("/mydata")
public class MyDataController {
	
	@Autowired
	private CsvService csvService;
	
	@GetMapping("/index")
	public String gomydata() {
		return "mydata";
	}
	
	@RequestMapping(value="/table1", method=RequestMethod.POST)
	@ResponseBody
	public ArrayList<MyDataDto> showMyTable1(){
		List<MyDataDto> allTable = csvService.readCsvArray2("C:\\workspace\\esgjsp\\esgjsp\\src\\main\\resources\\static\\csv\\my_data_1.csv");
		ArrayList<MyDataDto> allTable2 = new ArrayList<MyDataDto>();
		
		for (MyDataDto data : allTable) {
			allTable2.add(data);
		}
		
		System.out.println(allTable2);
		return allTable2;
	}
	
	@RequestMapping(value="/table2", method=RequestMethod.POST)
	@ResponseBody
	public ArrayList<MyDataDto> showMyTable2(){
		List<MyDataDto> allTable = csvService.readCsvArray2("C:\\workspace\\esgjsp\\esgjsp\\src\\main\\resources\\static\\csv\\my_data_2.csv");
		ArrayList<MyDataDto> allTable2 = new ArrayList<MyDataDto>();
		
		for (MyDataDto data : allTable) {
			allTable2.add(data);
		}
		
		return allTable2;
	}
	
	@RequestMapping(value="/table3", method=RequestMethod.POST)
	@ResponseBody
	public ArrayList<MyDataDto> showMyTable3(){
		List<MyDataDto> allTable = csvService.readCsvArray2("C:\\workspace\\esgjsp\\esgjsp\\src\\main\\resources\\static\\csv\\my_data_3.csv");
		ArrayList<MyDataDto> allTable2 = new ArrayList<MyDataDto>();
		
		for (MyDataDto data : allTable) {
			allTable2.add(data);
		}
		
		return allTable2;
	}
	
	@RequestMapping(value="/table4", method=RequestMethod.POST)
	@ResponseBody
	public ArrayList<MyDataDto> showMyTable4(){
		List<MyDataDto> allTable = csvService.readCsvArray2("C:\\workspace\\esgjsp\\esgjsp\\src\\main\\resources\\static\\csv\\my_data_4.csv");
		ArrayList<MyDataDto> allTable2 = new ArrayList<MyDataDto>();
		
		for (MyDataDto data : allTable) {
			allTable2.add(data);
		}
		
		return allTable2;
	}
	
	@RequestMapping(value="/table5", method=RequestMethod.POST)
	@ResponseBody
	public ArrayList<MyDataDto> showMyTable5(){
		List<MyDataDto> allTable = csvService.readCsvArray2("C:\\workspace\\esgjsp\\esgjsp\\src\\main\\resources\\static\\csv\\my_data_5.csv");
		ArrayList<MyDataDto> allTable2 = new ArrayList<MyDataDto>();
		
		for (MyDataDto data : allTable) {
			allTable2.add(data);
		}
		
		return allTable2;
	}
	
	@RequestMapping(value="/table6", method=RequestMethod.POST)
	@ResponseBody
	public ArrayList<MyDataDto> showMyTable6(){
		List<MyDataDto> allTable = csvService.readCsvArray2("C:\\workspace\\esgjsp\\esgjsp\\src\\main\\resources\\static\\csv\\my_data_6.csv");
		ArrayList<MyDataDto> allTable2 = new ArrayList<MyDataDto>();
		
		for (MyDataDto data : allTable) {
			allTable2.add(data);
		}
		
		return allTable2;
	}
	
}
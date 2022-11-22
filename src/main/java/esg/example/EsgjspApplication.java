package esg.example;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import esg.example.service.CsvService;

import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

@SpringBootApplication
@Controller
public class EsgjspApplication extends SpringBootServletInitializer{
	@Autowired
	private CsvService csvService;
	
	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder builder) {
		return builder.sources(EsgjspApplication.class);
	}
	
	public static void main(String[] args) {
		SpringApplication.run(EsgjspApplication.class, args);
	}
	
	@RequestMapping("/")
	public String root() {
		return "home";
	}
	
	
	@RequestMapping("/mydata")
	public String gomydata() {
		return "mydata";
	}
	
	@RequestMapping("/rawchart")
	public String gorawchart(Model model) {
		List<String []> pack_voltage = csvService.readCsv("C:\\workspace\\esgjsp\\esgjsp\\src\\main\\resources\\static\\csv\\pack_voltage.csv");
		List<String []> pack_current = csvService.readCsv("C:\\workspace\\esgjsp\\esgjsp\\src\\main\\resources\\static\\csv\\pack_current.csv");
		List<String []> charge_voltage = csvService.readCsv("C:\\workspace\\esgjsp\\esgjsp\\src\\main\\resources\\static\\csv\\charge_voltage.csv");
		List<String []> cell1_temperature = csvService.readCsv("C:\\workspace\\esgjsp\\esgjsp\\src\\main\\resources\\static\\csv\\cell1_temperature.csv");
		List<String []> cell2_temperature = csvService.readCsv("C:\\workspace\\esgjsp\\esgjsp\\src\\main\\resources\\static\\csv\\cell2_temperature.csv");
		List<String []> cell3_temperature = csvService.readCsv("C:\\workspace\\esgjsp\\esgjsp\\src\\main\\resources\\static\\csv\\cell3_temperature.csv");
		List<String []> cell4_temperature = csvService.readCsv("C:\\workspace\\esgjsp\\esgjsp\\src\\main\\resources\\static\\csv\\cell4_temperature.csv");
		List<String []> cell5_temperature = csvService.readCsv("C:\\workspace\\esgjsp\\esgjsp\\src\\main\\resources\\static\\csv\\cell5_temperature.csv");
		List<String []> cell6_temperature = csvService.readCsv("C:\\workspace\\esgjsp\\esgjsp\\src\\main\\resources\\static\\csv\\cell6_temperature.csv");
		List<String []> cell1_voltage = csvService.readCsv("C:\\workspace\\esgjsp\\esgjsp\\src\\main\\resources\\static\\csv\\cell1_voltage.csv");
		List<String []> cell2_voltage = csvService.readCsv("C:\\workspace\\esgjsp\\esgjsp\\src\\main\\resources\\static\\csv\\cell2_voltage.csv");
		List<String []> cell3_voltage = csvService.readCsv("C:\\workspace\\esgjsp\\esgjsp\\src\\main\\resources\\static\\csv\\cell3_voltage.csv");
		List<String []> cell4_voltage = csvService.readCsv("C:\\workspace\\esgjsp\\esgjsp\\src\\main\\resources\\static\\csv\\cell4_voltage.csv");
		List<String []> cell5_voltage = csvService.readCsv("C:\\workspace\\esgjsp\\esgjsp\\src\\main\\resources\\static\\csv\\cell5_voltage.csv");
		List<String []> cell6_voltage = csvService.readCsv("C:\\workspace\\esgjsp\\esgjsp\\src\\main\\resources\\static\\csv\\cell6_voltage.csv");
		
		ArrayList<String> pack_voltage2 = new ArrayList<String>();
		ArrayList<String> pack_current2 = new ArrayList<String>();
		ArrayList<String> charge_voltage2 = new ArrayList<String>();
		ArrayList<String> cell1_temperature2 = new ArrayList<String>();
		ArrayList<String> cell2_temperature2 = new ArrayList<String>();
		ArrayList<String> cell3_temperature2 = new ArrayList<String>();
		ArrayList<String> cell4_temperature2 = new ArrayList<String>();
		ArrayList<String> cell5_temperature2 = new ArrayList<String>();
		ArrayList<String> cell6_temperature2 = new ArrayList<String>();
		ArrayList<String> cell1_voltage2 = new ArrayList<String>();
		ArrayList<String> cell2_voltage2 = new ArrayList<String>();
		ArrayList<String> cell3_voltage2 = new ArrayList<String>();
		ArrayList<String> cell4_voltage2 = new ArrayList<String>();
		ArrayList<String> cell5_voltage2 = new ArrayList<String>();
		ArrayList<String> cell6_voltage2 = new ArrayList<String>();
		
		for (String[] strings : pack_voltage) {
			for(String s : strings) {
				pack_voltage2.add(s);
			}
		}
		for (String[] strings : pack_current) {
			for(String s : strings) {
				pack_current2.add(s);
			}
		}
		for (String[] strings : charge_voltage) {
			for(String s : strings) {
				charge_voltage2.add(s);
			}
		}
		for (String[] strings : cell1_temperature) {
			for(String s : strings) {
				cell1_temperature2.add(s);
			}
		}
		for (String[] strings : cell2_temperature) {
			for(String s : strings) {
				cell2_temperature2.add(s);
			}
		}
		for (String[] strings : cell3_temperature) {
			for(String s : strings) {
				cell3_temperature2.add(s);
			}
		}
		for (String[] strings : cell4_temperature) {
			for(String s : strings) {
				cell4_temperature2.add(s);
			}
		}
		for (String[] strings : cell5_temperature) {
			for(String s : strings) {
				cell5_temperature2.add(s);
			}
		}
		for (String[] strings : cell6_temperature) {
			for(String s : strings) {
				cell6_temperature2.add(s);
			}
		}
		for (String[] strings : cell1_voltage) {
			for(String s : strings) {
				cell1_voltage2.add(s);
			}
		}
		for (String[] strings : cell2_voltage) {
			for(String s : strings) {
				cell2_voltage2.add(s);
			}
		}
		for (String[] strings : cell3_voltage) {
			for(String s : strings) {
				cell3_voltage2.add(s);
			}
		}
		for (String[] strings : cell4_voltage) {
			for(String s : strings) {
				cell4_voltage2.add(s);
			}
		}
		for (String[] strings : cell5_voltage) {
			for(String s : strings) {
				cell5_voltage2.add(s);
			}
		}
		for (String[] strings : cell6_voltage) {
			for(String s : strings) {
				cell6_voltage2.add(s);
			}
		}
		model.addAttribute("pack_voltage",pack_voltage2);
		model.addAttribute("pack_current",pack_current2);
		model.addAttribute("charge_voltage",charge_voltage2);
		model.addAttribute("cell1_temperature",cell1_temperature2);
		model.addAttribute("cell2_temperature",cell2_temperature2);
		model.addAttribute("cell3_temperature",cell3_temperature2);
		model.addAttribute("cell4_temperature",cell4_temperature2);
		model.addAttribute("cell5_temperature",cell5_temperature2);
		model.addAttribute("cell6_temperature",cell6_temperature2);
		model.addAttribute("cell1_voltage",cell1_voltage2);
		model.addAttribute("cell2_voltage",cell2_voltage2);
		model.addAttribute("cell3_voltage",cell3_voltage2);
		model.addAttribute("cell4_voltage",cell4_voltage2);
		model.addAttribute("cell5_voltage",cell5_voltage2);
		model.addAttribute("cell6_voltage",cell6_voltage2);
		return "rawchart";
	}
	
	@RequestMapping("/bms")
	public String gobms() {
		return "bms";
	}
	
	@RequestMapping("/header")
	public String gohome() {
		return "home";
	}
}

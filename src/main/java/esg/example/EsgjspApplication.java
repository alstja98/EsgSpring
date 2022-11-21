package esg.example;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

@SpringBootApplication
@Controller
public class EsgjspApplication extends SpringBootServletInitializer{

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

	@RequestMapping("/alldata")
	public String goalldata() {
		return "alldata";
	}
	
	@RequestMapping("/mydata")
	public String gomydata() {
		return "mydata";
	}
	
	@RequestMapping("/rawchart")
	public String gorawchart() {
		return "rawchart";
	}
	
	@RequestMapping("/bms")
	public String gobms() {
		return "bms";
	}
}

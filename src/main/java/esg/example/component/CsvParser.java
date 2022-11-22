package esg.example.component;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Component;

import au.com.bytecode.opencsv.CSVReader;
import esg.example.dto.AlldataDto;

@Component
public class CsvParser {
	 
    public CsvParser() {}
 
    public static List<String []> readCsv(String filePath) {
    	List<String[]> data = new ArrayList<String[]>();
        try {
            CSVReader reader = new CSVReader(new FileReader(filePath));
            // UTF-8
            // CSVReader reader = new CSVReader(new InputStreamReader(new FileInputStream(filename), "UTF-8"), ",", '"', 1);
            String[] s;
            while ((s = reader.readNext()) != null) {
                data.add(s);
            }
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        
        return data;
    }
    
    public static List<AlldataDto> readCsvArray(String filePath) {
    	List<AlldataDto> data = new ArrayList<AlldataDto>();
    	try {
    		CSVReader reader = new CSVReader(new FileReader(filePath));
    		// UTF-8
    		// CSVReader reader = new CSVReader(new InputStreamReader(new FileInputStream(filename), "UTF-8"), ",", '"', 1);
    		String[] s;
    		while ((s = reader.readNext()) != null) {
    			AlldataDto tmp = new AlldataDto();
    			tmp.setWallet(s[0]);
    			tmp.setCell_No(s[1]);
    			tmp.setCell_Voltage(s[2]);
    			tmp.setCell_Temperature(s[3]);
    			tmp.setPack_Voltage(s[4]);
    			tmp.setPack_Current(s[5]);
    			tmp.setCharge_Voltage(s[6]);
    			tmp.setUpload_Date(s[7]);
    			data.add(tmp);
    		}
    	} catch (FileNotFoundException e) {
    		e.printStackTrace();
    	} catch (IOException e) {
    		e.printStackTrace();
    	}
    	
    	return data;
    }

}
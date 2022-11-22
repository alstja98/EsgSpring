package esg.example.component;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Component;

import au.com.bytecode.opencsv.CSVReader;

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

}
package esg.example.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import esg.example.component.CsvParser;
import esg.example.dto.AlldataDto;

@Service
public class CsvServiceImpl implements CsvService{

	@Autowired
	CsvParser csvparser;
	
	@Override
	public List<String[]> readCsv(String filePath) {
		return csvparser.readCsv(filePath);
	}

	@Override
	public List<AlldataDto> readCsvArray(String filePath) {
		return csvparser.readCsvArray(filePath);
	}

}

package esg.example.service;

import java.util.List;

import esg.example.dto.AlldataDto;

public interface CsvService {
	
	public List<String []> readCsv(String filePath);
	public List<AlldataDto> readCsvArray(String filePath);
}

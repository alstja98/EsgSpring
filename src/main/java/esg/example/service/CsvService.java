package esg.example.service;

import java.util.List;

import esg.example.dto.AlldataDto;
import esg.example.dto.MyDataDto;

public interface CsvService {
	
	public List<String []> readCsv(String filePath);
	public List<AlldataDto> readCsvArray(String filePath);
	public List<MyDataDto> readCsvArray2(String filePath);
}

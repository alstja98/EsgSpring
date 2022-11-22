package esg.example.dto;

public class MyDataDto {
	private String Cell_Voltage;
	private String Cell_Temperature;
	private String Pack_Voltage;
	private String Pack_Current;
	private String Charge_Voltage;
	public MyDataDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	public MyDataDto(String cell_Voltage, String cell_Temperature, String pack_Voltage, String pack_Current,
			String charge_Voltage) {
		super();
		Cell_Voltage = cell_Voltage;
		Cell_Temperature = cell_Temperature;
		Pack_Voltage = pack_Voltage;
		Pack_Current = pack_Current;
		Charge_Voltage = charge_Voltage;
	}
	public String getCell_Voltage() {
		return Cell_Voltage;
	}
	public void setCell_Voltage(String cell_Voltage) {
		Cell_Voltage = cell_Voltage;
	}
	public String getCell_Temperature() {
		return Cell_Temperature;
	}
	public void setCell_Temperature(String cell_Temperature) {
		Cell_Temperature = cell_Temperature;
	}
	public String getPack_Voltage() {
		return Pack_Voltage;
	}
	public void setPack_Voltage(String pack_Voltage) {
		Pack_Voltage = pack_Voltage;
	}
	public String getPack_Current() {
		return Pack_Current;
	}
	public void setPack_Current(String pack_Current) {
		Pack_Current = pack_Current;
	}
	public String getCharge_Voltage() {
		return Charge_Voltage;
	}
	public void setCharge_Voltage(String charge_Voltage) {
		Charge_Voltage = charge_Voltage;
	}
	@Override
	public String toString() {
		return "MyDataDto [Cell_Voltage=" + Cell_Voltage + ", Cell_Temperature=" + Cell_Temperature + ", Pack_Voltage="
				+ Pack_Voltage + ", Pack_Current=" + Pack_Current + ", Charge_Voltage=" + Charge_Voltage + "]";
	}
	
	
}

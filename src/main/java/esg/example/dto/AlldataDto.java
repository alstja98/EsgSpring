package esg.example.dto;

public class AlldataDto {
	private String wallet;
	private String cell_No;
	private String cell_Voltage;
	private String cell_Temperature;
	private String pack_Voltage;
	private String pack_Current;
	private String charge_Voltage;
	private String upload_Date;
	
	
	public AlldataDto() {
		super();
		// TODO Auto-generated constructor stub
	}

	public AlldataDto(String wallet, String cell_No, String cell_Voltage, String cell_Temperature, String pack_Voltage,
			String pack_Current, String charge_Voltage, String upload_Date) {
		super();
		this.wallet = wallet;
		this.cell_No = cell_No;
		this.cell_Voltage = cell_Voltage;
		this.cell_Temperature = cell_Temperature;
		this.pack_Voltage = pack_Voltage;
		this.pack_Current = pack_Current;
		this.charge_Voltage = charge_Voltage;
		this.upload_Date = upload_Date;
	}

	public String getWallet() {
		return wallet;
	}

	public void setWallet(String wallet) {
		this.wallet = wallet;
	}

	public String getCell_No() {
		return cell_No;
	}

	public void setCell_No(String cell_No) {
		this.cell_No = cell_No;
	}

	public String getCell_Voltage() {
		return cell_Voltage;
	}

	public void setCell_Voltage(String cell_Voltage) {
		this.cell_Voltage = cell_Voltage;
	}

	public String getCell_Temperature() {
		return cell_Temperature;
	}

	public void setCell_Temperature(String cell_Temperature) {
		this.cell_Temperature = cell_Temperature;
	}

	public String getPack_Voltage() {
		return pack_Voltage;
	}

	public void setPack_Voltage(String pack_Voltage) {
		this.pack_Voltage = pack_Voltage;
	}

	public String getPack_Current() {
		return pack_Current;
	}

	public void setPack_Current(String pack_Current) {
		this.pack_Current = pack_Current;
	}

	public String getCharge_Voltage() {
		return charge_Voltage;
	}

	public void setCharge_Voltage(String charge_Voltage) {
		this.charge_Voltage = charge_Voltage;
	}

	public String getUpload_Date() {
		return upload_Date;
	}

	public void setUpload_Date(String upload_Date) {
		this.upload_Date = upload_Date;
	}

	@Override
	public String toString() {
		return "AlldataDto [wallet=" + wallet + ", cell_No=" + cell_No + ", cell_Voltage=" + cell_Voltage
				+ ", cell_Temperature=" + cell_Temperature + ", pack_Voltage=" + pack_Voltage + ", pack_Current="
				+ pack_Current + ", charge_Voltage=" + charge_Voltage + ", upload_Date=" + upload_Date + "]";
	}
	
	
	
}

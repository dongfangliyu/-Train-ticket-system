package com.model;

/**
 * TCheci generated by MyEclipse Persistence Tools
 */

public class TCheci implements java.io.Serializable
{

	private Integer id;
	private String bianhao;
	private String shifazhan;
	private String daodazhan;
	private String piaoshijian;

	private String startshijian;
	private String endshijian;
	private Integer piaojia;
	private Integer piaoshu;
	
	private String del;
	
	
	public String getDaodazhan()
	{
		return daodazhan;
	}
	public void setDaodazhan(String daodazhan)
	{
		this.daodazhan = daodazhan;
	}
	public String getDel()
	{
		return del;
	}
	public void setDel(String del)
	{
		this.del = del;
	}
	public String getEndshijian()
	{
		return endshijian;
	}
	public void setEndshijian(String endshijian)
	{
		this.endshijian = endshijian;
	}
	public Integer getId()
	{
		return id;
	}
	
	public String getBianhao() {
		return bianhao;
	}
	public void setBianhao(String bianhao) {
		this.bianhao = bianhao;
	}
	public void setId(Integer id)
	{
		this.id = id;
	}
	public Integer getPiaojia()
	{
		return piaojia;
	}
	public void setPiaojia(Integer piaojia)
	{
		this.piaojia = piaojia;
	}
	public String getPiaoshijian()
	{
		return piaoshijian;
	}
	public void setPiaoshijian(String piaoshijian)
	{
		this.piaoshijian = piaoshijian;
	}
	public Integer getPiaoshu()
	{
		return piaoshu;
	}
	public void setPiaoshu(Integer piaoshu)
	{
		this.piaoshu = piaoshu;
	}
	public String getShifazhan()
	{
		return shifazhan;
	}
	public void setShifazhan(String shifazhan)
	{
		this.shifazhan = shifazhan;
	}
	public String getStartshijian()
	{
		return startshijian;
	}
	public void setStartshijian(String startshijian)
	{
		this.startshijian = startshijian;
	}

}
package com.model;

/**
 * TYuding entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class TYuding implements java.io.Serializable {

	private Integer id;
	private Integer userId;
	private Integer checiId;
	private String leixing;
	private Integer shuliang;
	
	private Integer zongjine;
	private String nidexingming;
	private String lianxihua;
	private String songhuodizhi;
	
	private String zhifufangshi;
	private String yudingshi;
	private String zhuangtai;//已受理--未受理

	// Constructors

	/** default constructor */
	public TYuding() {
	}

	/** full constructor */
	public TYuding(Integer userId, Integer checiId, Integer shuliang,
			Integer zongjine, String nidexingming, String lianxihua,
			String songhuodizhi, String zhifufangshi, String yudingshi,
			String zhuangtai) {
		this.userId = userId;
		this.checiId = checiId;
		this.shuliang = shuliang;
		this.zongjine = zongjine;
		this.nidexingming = nidexingming;
		this.lianxihua = lianxihua;
		this.songhuodizhi = songhuodizhi;
		this.zhifufangshi = zhifufangshi;
		this.yudingshi = yudingshi;
		this.zhuangtai = zhuangtai;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getUserId() {
		return this.userId;
	}

	public String getLeixing() {
		return leixing;
	}

	public void setLeixing(String leixing) {
		this.leixing = leixing;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public Integer getCheciId() {
		return this.checiId;
	}

	public void setCheciId(Integer checiId) {
		this.checiId = checiId;
	}

	public Integer getShuliang() {
		return this.shuliang;
	}

	public void setShuliang(Integer shuliang) {
		this.shuliang = shuliang;
	}

	public Integer getZongjine() {
		return this.zongjine;
	}

	public void setZongjine(Integer zongjine) {
		this.zongjine = zongjine;
	}

	public String getNidexingming() {
		return this.nidexingming;
	}

	public void setNidexingming(String nidexingming) {
		this.nidexingming = nidexingming;
	}

	public String getLianxihua() {
		return this.lianxihua;
	}

	public void setLianxihua(String lianxihua) {
		this.lianxihua = lianxihua;
	}

	public String getSonghuodizhi() {
		return this.songhuodizhi;
	}

	public void setSonghuodizhi(String songhuodizhi) {
		this.songhuodizhi = songhuodizhi;
	}

	public String getZhifufangshi() {
		return this.zhifufangshi;
	}

	public void setZhifufangshi(String zhifufangshi) {
		this.zhifufangshi = zhifufangshi;
	}

	public String getYudingshi() {
		return this.yudingshi;
	}

	public void setYudingshi(String yudingshi) {
		this.yudingshi = yudingshi;
	}

	public String getZhuangtai() {
		return this.zhuangtai;
	}

	public void setZhuangtai(String zhuangtai) {
		this.zhuangtai = zhuangtai;
	}

}
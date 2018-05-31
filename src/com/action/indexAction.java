package com.action;



import java.util.List;
import java.util.Map;


import com.dao.TLianjieDAO;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class indexAction extends ActionSupport
{
	private TLianjieDAO lianjieDAO;
	public TLianjieDAO getLianjieDAO()
	{
		return lianjieDAO;
	}

	public void setLianjieDAO(TLianjieDAO lianjieDAO)
	{
		this.lianjieDAO = lianjieDAO;
	}
	
	public String index()
	{
		String sql="from TLianjie where del='no'";
		List lianjieList =lianjieDAO.getHibernateTemplate().find(sql);
		System.out.println("===========================执行===============================");
		Map session=ActionContext.getContext().getSession();
		session.put("lianjieList", lianjieList);
		return ActionSupport.SUCCESS;
	}
}

package com.util;

import java.text.SimpleDateFormat;
import java.util.Date;

public class test
{

	/**
	 * @param args
	 */
	public static void main(String[] args)
	{
		System.out.println(new SimpleDateFormat("yyyy-MM-dd").format(new Date(new Date().getTime()+3*24*60*60*1000)));

	}

}

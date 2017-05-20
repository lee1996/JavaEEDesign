package com.manage;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLDecoder;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.contract.ContractImpl;
import com.opensymphony.xwork2.ActionSupport;



public class SearchAction extends ActionSupport {
	private String con_id;

	public String getCon_id() {
		return con_id;
	}

	public void setCon_id(String con_id) {
		this.con_id = con_id;
	}
	
	
	public void mySearch() throws Exception{
		HttpServletRequest request=ServletActionContext.getRequest();
		Cookie[] cookies=request.getCookies();
		String user=null,pwd=null;
		for(Cookie cookie : cookies){
			if(URLDecoder.decode(cookie.getName(), "UTF-8").equals("username")){
				 user=URLDecoder.decode(cookie.getValue(), "UTF-8");
				 break;
			}
		}
		ApplicationContext ctx=new ClassPathXmlApplicationContext("applicationContext.xml");
		HttpServletResponse response=ServletActionContext.getResponse();
		response.setCharacterEncoding("utf-8");
		ContractImpl conImpl=ctx.getBean(ContractImpl.class);
		List<String> list=conImpl.VagueQueryCon(con_id,user);
		JSONArray jsonArray=JSONArray.fromObject(list);
		response.getWriter().write(jsonArray.toString());
	}
	
}

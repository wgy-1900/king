package com.wgyws.king.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.validator.internal.util.logging.Log_$logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.wgyws.king.pojo.User;
import com.wgyws.king.service.UserService;
import com.wgyws.king.util.Constant;


@Controller
@RequestMapping("/user")
public class UserController {
	public UserController(){
		System.out.println("UserController-------");
	}
	@Autowired
	private UserService userService;
//	@Autowired
//	private GameTypeService gameTypeService;
//	@RequestMapping("/getCertPic.action")
//	public void picture(HttpServletRequest request,HttpServletResponse response ) throws IOException, ServletException{
//		//往客户端输出
//		OutputStream os = response.getOutputStream();
//		
//		//生成验证码
//		String serverCode = MakeCertPic.getCertPic(70,24,os);
//		
//		//保存到session
//		request.getSession().setAttribute("serverCode", serverCode);
//		
//	}
	
	@RequestMapping("/login.action")
	public String login(HttpServletRequest request,HttpServletResponse response) throws Exception{
		String account = request.getParameter("account");
		String pwd = request.getParameter("pwd");
		String result="";
		User user = userService.login(account, pwd);
		if(user!=null){
				request.getSession().setAttribute("user",user);
				result = Constant.LOGIN_SUCCESS_USER;
				request.setAttribute("operator", result);
				return "prompt/success";
		}else{
				result = Constant.LOGIN_ERROR;
				request.setAttribute("operator", result);
				return "prompt/error";
		}
	}

}
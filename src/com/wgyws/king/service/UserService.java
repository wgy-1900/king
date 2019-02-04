package com.wgyws.king.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.wgyws.king.pojo.User;

@Transactional("txManager")
public interface UserService {
	//登陆操作
	User login(String account,String pwd) throws Exception;
	//添加账户
	void addUser(User user) throws Exception;
	//查询账户是否存在
	User queryByAccount(String account) throws Exception;
	//更新用户信息
	void updateUser(User user) throws Exception;
	List<User> queryByAccNameNum (String account,String name,String num)throws Exception;
	//分页查询
	List<User> queryByPageModel(int pageNo, int pageSize) throws Exception;
	int queryCnt() throws Exception;
}

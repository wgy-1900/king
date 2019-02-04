package com.wgyws.king.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wgyws.king.mapper.UserMapper;
import com.wgyws.king.pojo.User;
import com.wgyws.king.service.UserService;
@Service("userService")
public class UserServiceImpl implements UserService{
	@Autowired
	private UserMapper userMapper;
	@Override
	public User login(String account, String pwd) throws Exception {
		Map<String, String> param = new HashMap<String, String>();
		param.put("account", account);
		param.put("pwd", pwd);
		User user = userMapper.queryByUserNameAndPwd(param);
		return user;
	}

	@Override
	public void addUser(User user) throws Exception {

	}

	@Override
	public User queryByAccount(String account) throws Exception {
		return null;
	}

	@Override
	public void updateUser(User user) throws Exception {

	}

	@Override
	public List<User> queryByAccNameNum(String account, String name, String num) throws Exception {
		return null;
	}

	@Override
	public List<User> queryByPageModel(int pageNo, int pageSize) throws Exception {
		return null;
	}

	@Override
	public int queryCnt() throws Exception {
		return 0;
	}
}

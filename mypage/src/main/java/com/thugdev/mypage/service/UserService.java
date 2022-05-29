package com.thugdev.mypage.service;

import java.sql.Date;

import com.thugdev.mypage.domain.LoginDTO;
import com.thugdev.mypage.domain.UserVO;

public interface UserService {

	public void register(UserVO userVO) throws Exception;
	
	public UserVO login(LoginDTO loginDTO) throws Exception;
	
	public void keepLogin(String userId, String sessionId, Date next) throws Exception;

	public UserVO checkLoginBefore(String value) throws Exception;
	
	public UserVO getUser(String userId) throws Exception;
	
	public int userUpdate(UserVO userVO) throws Exception;
	
}

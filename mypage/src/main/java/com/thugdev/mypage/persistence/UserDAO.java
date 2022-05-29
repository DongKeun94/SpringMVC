package com.thugdev.mypage.persistence;

import java.sql.Date;

import com.thugdev.mypage.domain.LoginDTO;
import com.thugdev.mypage.domain.UserVO;

public interface UserDAO {

	public void register(UserVO userVO) throws Exception;
	
	public UserVO login(LoginDTO loginDTO) throws Exception;
	
	public void keepLogin(String userID, String sessionId, Date sessionLimit) throws Exception;
	
	public UserVO checkUserWithSessionKey(String value) throws Exception;
	
	public UserVO getUser(String userId) throws Exception;
	
	public int userUpdate(UserVO userVO) throws Exception;
	
	public void updateLoginDate(String userId) throws Exception;
}

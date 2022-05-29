package com.thugdev.mypage.service;

import java.sql.Date;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.thugdev.mypage.domain.LoginDTO;
import com.thugdev.mypage.domain.UserVO;
import com.thugdev.mypage.persistence.UserDAO;

@Service
public class UserServiceImpl implements UserService{
	
	private final UserDAO userDAO;
	
	@Inject
	public UserServiceImpl(UserDAO userDAO) {
		this.userDAO = userDAO;
	}

	@Override
	public void register(UserVO userVO) throws Exception {
		userDAO.register(userVO);
	}

	@Override
	public UserVO login(LoginDTO loginDTO) throws Exception {
		userDAO.updateLoginDate(loginDTO.getUserId());
		return  userDAO.login(loginDTO);
	}
	
	@Override
	public void keepLogin(String userId, String sessionId, Date next) throws Exception {
	    userDAO.keepLogin(userId, sessionId, next);
	}

	@Override
	public UserVO checkLoginBefore(String value) throws Exception {
	    return userDAO.checkUserWithSessionKey(value);
	}

	@Override
	public UserVO getUser(String userId) throws Exception {
		return userDAO.getUser(userId);
	}


	@Override
	public int userUpdate(UserVO userVO) throws Exception {
		
		int count = userDAO.userUpdate(userVO);
		
		return count;
	}
	

}

package com.thugdev.mypage.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.mindrot.jbcrypt.BCrypt;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.thugdev.mypage.domain.ArticleVO;
import com.thugdev.mypage.domain.LoginDTO;
import com.thugdev.mypage.domain.ReplyVO;
import com.thugdev.mypage.domain.UserVO;
import com.thugdev.mypage.service.ArticleService;
import com.thugdev.mypage.service.ReplyService;
import com.thugdev.mypage.service.UserService;

@Controller
@RequestMapping("/user")
public class UserInfoController {
private static final Logger logger = LoggerFactory.getLogger(UserInfoController.class);
	
	@Inject
    private UserService userService;

    @Inject
    private ArticleService articleService;

    @Inject
    private ReplyService replyService;
	
	@Resource(name = "uimagePath")
    private String uimagePath;
	


//    // 회원 비밀번호 수정처리
//    @RequestMapping(value = "/modify/pw", method = RequestMethod.POST)
//    public String userPwModify(@RequestParam("userId") String userId,
//                               @RequestParam("oldPw") String oldPw,
//                               @RequestParam("newPw") String newPw,
//                               HttpSession session,
//                               RedirectAttributes redirectAttributes) throws Exception {
//        UserVO userInfo = userService.getUser(userId);
//        if (!BCrypt.checkpw(oldPw, userInfo.getUserPw())) {
//            redirectAttributes.addFlashAttribute("msg", "FAILURE");
//            return "redirect:/user/profile";
//        }
//        String newHashPw = BCrypt.hashpw(newPw, BCrypt.gensalt());
//        userInfo.setUserPw(newHashPw);
//        userService.updatePw(userInfo);
//        session.setAttribute("login", userInfo);
//        redirectAttributes.addFlashAttribute("msg", "SUCCESS");
//        return "redirect:/user/profile";
//    }

    // 회원 정보 페이지
    @RequestMapping(value = "/profile", method = RequestMethod.GET)
    public String profile(HttpSession session, Model model) throws Exception {
    	
        Object userObj = session.getAttribute("login");
        UserVO userVO = (UserVO) userObj;
        String userId = userVO.getUserId();
        
        List<ArticleVO> userBoardList = articleService.userBoardList(userId);
        List<ReplyVO> userReplies = replyService.userReplies(userId);

        model.addAttribute("userBoardList", userBoardList);
        model.addAttribute("userReplies", userReplies);

        return "user/profile";
    }
    
    @RequestMapping(value="/modify", method = RequestMethod.GET )
    public String updateGet(UserVO userVO) throws Exception {
    	return "user/modProfile";
    }

    
    @RequestMapping(value="/modify", method = RequestMethod.POST )
    public String updatePost(UserVO userVO,HttpSession session,RedirectAttributes rattr) throws Exception {
    	userService.userUpdate(userVO);
    	session.invalidate();
    	rattr.addFlashAttribute("msg", "COMPLETE");
    	return "redirect:/";
    }
    
    
}
    


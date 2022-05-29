package com.thugdev.mypage.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.thugdev.mypage.commons.paging.Criteria;
import com.thugdev.mypage.commons.paging.PageMaker;
import com.thugdev.mypage.domain.ReplyVO;
import com.thugdev.mypage.service.ReplyService;

@RestController
@RequestMapping("/replies")
public class ReplyController {
	
	private final ReplyService replyService;
	
	@Inject
	public ReplyController(ReplyService replyService) {
		this.replyService = replyService;
	}
	
	//댓글 등록 
	@RequestMapping(value = "", method = RequestMethod.POST) 
	public ResponseEntity<String> register(@RequestBody ReplyVO replyVO) { 
		ResponseEntity<String> entity = null; 
		try { 
			replyService.addReply(replyVO); 
			entity = new ResponseEntity<String>("regSuccess", HttpStatus.OK); 
		} catch (Exception e) { 
			e.printStackTrace(); 
			entity = new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST); 
		} 
		return entity; 
	} 
	
	//댓글 목록
	@RequestMapping(value = "/all/{articleNo}", method = RequestMethod.GET) 
	public ResponseEntity<List<ReplyVO>> list(@PathVariable("article_no") Integer article_no) { 
		ResponseEntity<List<ReplyVO>> entity = null; 
		try { 
			entity = new ResponseEntity<List<ReplyVO>>(replyService.list(article_no), HttpStatus.OK); 
		} catch (Exception e) { 
			e.printStackTrace(); 
			entity = new ResponseEntity<List<ReplyVO>>(HttpStatus.BAD_REQUEST); 
		} 
		return entity; 
	} 
	
	//댓글 수정
	@RequestMapping(value = "/{reply_no}", method = {RequestMethod.PUT, RequestMethod.PATCH}) 
	public ResponseEntity<String> update(@PathVariable("reply_no") Integer reply_no, @RequestBody ReplyVO replyVO) { 
		ResponseEntity<String> entity = null; 
		try { 
			replyVO.setReply_no(reply_no); 
			replyService.update(replyVO); 
			entity = new ResponseEntity<String>("modSuccess", HttpStatus.OK); 
		} catch (Exception e) { 
			e.printStackTrace(); 
			entity = new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST); 
		} 
		return entity; 
	} 
	
	//댓글 삭제 
	@RequestMapping(value = "/{reply_no}", method = RequestMethod.DELETE) 
	public ResponseEntity<String> delete(@PathVariable("reply_no") Integer reply_no) { 
		ResponseEntity<String> entity = null; 
		try { 
			replyService.removeReply(reply_no); 
			entity = new ResponseEntity<String>("delSuccess", HttpStatus.OK); 
		} catch (Exception e) { 
			e.printStackTrace(); 
			entity = new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST); 
		} 
		return entity; 
	}
	
	//댓글 페이징 
	@RequestMapping(value = "/{article_no}/{page}", method = RequestMethod.GET) 
	public ResponseEntity<Map<String, Object>> listPaging(@PathVariable("article_no") Integer article_no, @PathVariable("page") Integer page) { 
		ResponseEntity<Map<String, Object>> entity = null; 
		
		try { 
			Criteria criteria = new Criteria(); 
			criteria.setPage(page); 
			
			List<ReplyVO> replies = replyService.getRepliesPaging(article_no, criteria); 
			int repliesCount = replyService.countReplies(article_no); 
			
			PageMaker pageMaker = new PageMaker(); 
			pageMaker.setCriteria(criteria); 
			pageMaker.setTotalCount(repliesCount); 
			
			Map<String, Object> map = new HashMap<String, Object>(); 
			map.put("replies", replies); 
			map.put("pageMaker", pageMaker); 
			
			entity = new ResponseEntity<Map<String, Object>>(map, HttpStatus.OK);
			
		} catch (Exception e) { 
			e.printStackTrace(); 
			entity = new ResponseEntity<Map<String, Object>>(HttpStatus.OK); 
		} 
		
		return entity; 
	}

}

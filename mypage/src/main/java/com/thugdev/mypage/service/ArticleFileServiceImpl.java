package com.thugdev.mypage.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.thugdev.mypage.persistence.ArticleFileDAO;

@Service
public class ArticleFileServiceImpl implements ArticleFileService{
    
    private final ArticleFileDAO articleFileDAO;

    @Inject
    public ArticleFileServiceImpl(ArticleFileDAO articleFileDAO) {
        this.articleFileDAO = articleFileDAO;
    }
    
 // 첨부파일 목록
    @Override
    public List<String> getAttach(Integer article_no) throws Exception {
        return articleFileDAO.getAttach(article_no);
    }

	@Override
	public void addAttach(String file_name, Integer article_no) throws Exception {
		articleFileDAO.addAttach(file_name, article_no);
		
	}
	
	@Override
	public void replaceAttach(String file_name, Integer article_no) throws Exception {
		articleFileDAO.replaceAttach(file_name, article_no);
	}
	
	@Override
	public void deleteAttach(String file_name) throws Exception {
		articleFileDAO.deleteAttach(file_name);
	}
	
	@Override
	public void deleteAllAttach(Integer article_no) throws Exception {
		articleFileDAO.deleteAllAttach(article_no);
	}
	
	@Override
	public void updateAttachCnt(Integer article_no) throws Exception {
		articleFileDAO.updateAttachCnt(article_no);
	}

}

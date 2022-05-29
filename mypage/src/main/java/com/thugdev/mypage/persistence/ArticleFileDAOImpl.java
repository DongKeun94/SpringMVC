package com.thugdev.mypage.persistence;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class ArticleFileDAOImpl implements ArticleFileDAO{

	private static final String NAMESPACE ="com.thugdev.mypage.mappers.upload.articleFileMapper";
	
	@Inject
	private SqlSession sqlSession;

	@Override
	public void addAttach(String file_name, Integer article_no) throws Exception {
		Map<String, Object> paramMap = new HashMap<String, Object>();
        paramMap.put("file_name", file_name);
        paramMap.put("article_no", article_no);
        sqlSession.insert(NAMESPACE + ".addAttach", paramMap);
	}

	@Override
	public List<String> getAttach(Integer article_no) throws Exception {
		return sqlSession.selectList(NAMESPACE+".getAttach",article_no);
	}

	@Override
	public void replaceAttach(String file_name, Integer article_no) throws Exception {
		 Map<String, Object> paramMap = new HashMap<String, Object>();
	        paramMap.put("file_name", file_name);
	        paramMap.put("article_no", article_no);
	        sqlSession.insert(NAMESPACE + ".replaceAttach", paramMap);
	}

	@Override
	public void deleteAttach(String file_name) throws Exception {
			sqlSession.delete(NAMESPACE+".deleteAttach",file_name);
	}

	@Override
	public void deleteAllAttach(Integer article_no) throws Exception {
		sqlSession.delete(NAMESPACE + ".deleteAllAttach", article_no);
	}

	@Override
	public void updateAttachCnt(Integer article_no) throws Exception {
		sqlSession.update(NAMESPACE + ".updateAttachCnt", article_no);
	}
	
	
}

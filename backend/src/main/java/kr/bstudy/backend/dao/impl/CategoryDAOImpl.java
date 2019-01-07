package kr.bstudy.backend.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import kr.bstudy.backend.dao.CategoryDAO;
import kr.bstudy.backend.dto.Category;

@Repository("categoryDAO")
@Transactional
public class CategoryDAOImpl implements CategoryDAO{
	
	@Autowired
	private SessionFactory sessionFactory;
	
	/**
	 * 작성자 : 전형동
	 * 작성일 : 1월 7일
	 * 메소드 : 카테고리 리스트 메소드 (테스트판)
	 */
	
	
	@Override
	public List<Category> list() {
		
		String selectActiveCategory = "FROM Category WHERE active = :active";
		
		Query query = sessionFactory.getCurrentSession().createQuery(selectActiveCategory);
		
		query.setParameter("active", true);
		
		return query.getResultList();
	}

	/**
	 * ID를 기반으로 단일 카테고리 얻기
	 * @param id
	 * @return
	 */
	@Override
	public Category get(int id) {
		return sessionFactory.getCurrentSession().get(Category.class, Integer.valueOf(id));
	}

	@Override
	public boolean add(Category category) {
		
		try {
			// 데이터베이스 테이블에 범주를 추가하십시오.
			sessionFactory.getCurrentSession().persist(category);
			return true;	
		}
		catch(Exception ex) {
			ex.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean update(Category category) {
		try {
			// 데이터베이스 테이블에 범주를 추가하십시오.
			sessionFactory.getCurrentSession().update(category);
			return true;	
		}
		catch(Exception ex) {
			ex.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean delete(Category category) {
		try {
			// 데이터베이스 테이블에 범주를 추가하십시오.
			sessionFactory.getCurrentSession().delete(category);
			return true;	
		}
		catch(Exception ex) {
			ex.printStackTrace();
			return false;
		}
	}
	
}

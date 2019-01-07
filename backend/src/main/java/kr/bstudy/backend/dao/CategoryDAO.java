package kr.bstudy.backend.dao;

import java.util.List;

import kr.bstudy.backend.dto.Category;

public interface CategoryDAO {
	
	
	List<Category> list();
	Category get(int id);
	
	boolean add(Category category);
	boolean update(Category category);
	boolean delete(Category category);
	
}

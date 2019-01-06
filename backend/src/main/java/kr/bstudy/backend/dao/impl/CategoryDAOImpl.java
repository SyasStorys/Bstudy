package kr.bstudy.backend.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import kr.bstudy.backend.dao.CategoryDAO;
import kr.bstudy.backend.dto.Category;

@Repository("categoryDAO")
@Transactional
public class CategoryDAOImpl implements CategoryDAO{

	private static List<Category> categories = new ArrayList<Category>();
	
	static {
		Category category = new Category();
		
		category.setId(1);
		category.setName("TV");
		category.setDescription("이 TV는 지상 최강의 TV입니다.");
		category.setImageURL("CAT_1.png");
		
		categories.add(category);
		
		
		category = new Category();
		
		category.setId(2);
		category.setName("Mobile");
		category.setDescription("이 Mobile는 지상 최강의 Mobile입니다.");
		category.setImageURL("CAT_2.png");
		
		categories.add(category);
		
		category = new Category();
		
		category.setId(3);
		category.setName("Labtop");
		category.setDescription("이 Labtop는 지상 최강의 Labtop입니다.");
		category.setImageURL("CAT_3.png");
		
		categories.add(category);
		
	}
	
	@Override
	public List<Category> list() {
		return categories;
	}

	@Override
	public Category get(int id) {
		
		for(Category category : categories) {
			if(category.getId() == id) return category;
		}
		
		return null;
	}
	
}

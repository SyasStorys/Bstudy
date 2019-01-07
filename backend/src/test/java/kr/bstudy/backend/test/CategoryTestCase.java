package kr.bstudy.backend.test;



import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import kr.bstudy.backend.dao.CategoryDAO;
import kr.bstudy.backend.dto.Category;

public class CategoryTestCase {

	private static AnnotationConfigApplicationContext context;
	
	private static CategoryDAO categoryDAO;
	
	private Category category;
	
	@BeforeClass
	public static void init() {
		
		context = new AnnotationConfigApplicationContext();
		context.scan("kr.bstudy.backend");
		context.refresh();
		categoryDAO = (CategoryDAO) context.getBean("categoryDAO");
		
	}
	
	/**
	 * 작성자 : 전형동
	 * 작성일 : 1월 7일
	 * 카테고리 삽입 테스트 (하이버네이트)
	 */
/*	@Test
	public void testAddCategory() {
		
		category = new Category();
		
		category.setName("코트");
		category.setDescription("이건 코트다");
		category.setImageURL("COTE_1.png");
		
		assertEquals("카테고리에 정상적으로 상품이 등록 되었습니다", true, categoryDAO.add(category));
		
		
		category = new Category();
		
		category.setName("자켓");
		category.setDescription("이건 자켓이다");
		category.setImageURL("COTE_2.png");
		
		assertEquals("카테고리에 정상적으로 상품이 등록 되었습니다", true, categoryDAO.add(category));
		
		
		category = new Category();
		
		category.setName("아우터");
		category.setDescription("이건 아우터다");
		category.setImageURL("COTE_3.png");
		
		assertEquals("카테고리에 정상적으로 상품이 등록 되었습니다", true, categoryDAO.add(category));
	}*/
	
/*	@Test
	public void testGetCategory() {
		
		category = categoryDAO.get(1);
		
		assertEquals("카테고리에 정상적으로 상품이 등록 되었습니다", "코트", category.getName());
		
	}*/
	
/*	@Test
	public void testUpdateCategory() {
		
		category = categoryDAO.get(1);
		category.setName("코트");
		
		assertEquals("카테고리에 정상적으로 상품이 등록 되었습니다", true, categoryDAO.update(category));
		
	}
	*/
	
/*	@Test
	public void testDeleteCategory() {
		
		category = categoryDAO.get(2);
		
		assertEquals("카테고리에 정상적으로 상품이 삭제 되었습니다", true, categoryDAO.delete(category));
		
	}
	*/
	
	
/*	@Test
	public void testListCategory() {
		assertEquals("카테고리에 있는 리스트를 정상적으로 출력 하였습니다", 3, categoryDAO.list().size());
	}
	*/
	
	/*@Test
	public void testCRUDCategory() {
		
		
		// 추가
		category = new Category();
		
		category.setName("코트");
		category.setDescription("이건 코트다");
		category.setImageURL("COTE_1.png");
		
		assertEquals("카테고리에 정상적으로 상품이 등록 되었습니다", true, categoryDAO.add(category));
		
		
		category = new Category();
		
		category.setName("자켓");
		category.setDescription("이건 자켓이다");
		category.setImageURL("COTE_2.png");
		
		assertEquals("카테고리에 정상적으로 상품이 등록 되었습니다", true, categoryDAO.add(category));
		
		
		category = new Category();
		
		category.setName("아우터");
		category.setDescription("이건 아우터다");
		category.setImageURL("COTE_3.png");
		
		assertEquals("카테고리에 정상적으로 상품이 등록 되었습니다", true, categoryDAO.add(category));

		
		// 카테고리 업데이트
		
		category = categoryDAO.get(1);
		category.setName("코트");
		
		assertEquals("카테고리에 정상적으로 상품이 등록 되었습니다", true, categoryDAO.update(category));
		
		
		// 카테고리 삭제
		assertEquals("카테고리에 정상적으로 상품이 삭제 되었습니다", true, categoryDAO.delete(category));
		
		//카테고리 리스트 출력
		assertEquals("카테고리에 있는 리스트를 정상적으로 출력 하였습니다", 2, categoryDAO.list().size());
		
	}*/
	
	
	
	
	
	
	
}

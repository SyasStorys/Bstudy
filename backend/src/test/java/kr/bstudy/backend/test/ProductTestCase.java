package kr.bstudy.backend.test;



import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import kr.bstudy.backend.dao.ProductDAO;
import kr.bstudy.backend.dto.Product;

public class ProductTestCase {

	private static AnnotationConfigApplicationContext context;
	
	private static ProductDAO productDAO;
	
	private Product product;
	
	@BeforeClass
	public static void init() {
		
		context = new AnnotationConfigApplicationContext();
		context.scan("kr.bstudy.backend");
		context.refresh();
		productDAO = (ProductDAO) context.getBean("productDAO");
		
	}
	
	/*@Test
	public void testCRUDProduct() {
		// create operation
		
		product = new Product();
		product.setName("신상 코트 1호");
		product.setBrand("UWA");
		product.setDescription("이 상품을 사면 당신에게 로또 1등을 드리리..ㄹ 수 도있음?");
		product.setUnitPrice(25000);
		product.setActive(true);
		product.setCategoryId(1);
		product.setUnitPrice(1);
		
		assertEquals("카테고리에 상품이 정상적으로 등록 되었습니다", true, productDAO.add(product));
		
		// reading and updating the category
		
		product = productDAO.get(2);
		product.setName("신상 자켓 1호");
		assertEquals("정상적으로 상품이 업데이트 되었습니다.", true, productDAO.update(product));
		
		
		assertEquals("정상적으로 상품이 삭제 되었습니다.", true, productDAO.delete(product));
		
		assertEquals("상품 리스트가 정상적으로 출력 되었습니다.", 6, productDAO.list().size());
		
	}*/
	
	@Test
	public void testListActiveProducts() {
		assertEquals("상품 리스트가 정상적으로 출력 되었습니다.", 5, productDAO.listActiveProducts().size());
	}
	
	@Test
	public void testListActiveProductsByCategory() {
		assertEquals("상품 리스트가 정상적으로 출력 되었습니다.", 3, productDAO.listActiveProductsByCategory(3).size());
		assertEquals("상품 리스트가 정상적으로 출력 되었습니다.", 2, productDAO.listActiveProductsByCategory(1).size());
	}
	
	@Test
	public void testGetLatsetActiveProduct() {
		assertEquals("상품 리스트가 정상적으로 출력 되었습니다.", 3, productDAO.getLatestActiveProducts(3).size());
	}
	
	
}

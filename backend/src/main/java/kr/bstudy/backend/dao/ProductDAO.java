package kr.bstudy.backend.dao;

import java.util.List;

import kr.bstudy.backend.dto.Product;

/**
 * 작성자 : 전형동
 * 작성일 : 1월 9일
 * 클래스 : 상품 데이터베이스 오브젝트
 * @author Administrator
 *
 */
public interface ProductDAO {

	Product get(int productId);
	List<Product> list();
	boolean add(Product product);
	boolean update(Product product);
	boolean delete(Product product);
	
	// business methods
	List<Product> listActiveProducts();
	List<Product> listActiveProductsByCategory(int categoryId);
	List<Product> getLatestActiveProducts(int count);
	
	
}

package kr.bstudy.front.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.bstudy.backend.dao.CategoryDAO;
import kr.bstudy.backend.dao.ProductDAO;
import kr.bstudy.backend.dto.Category;
import kr.bstudy.backend.dto.Product;

@Controller
public class IndexController {
	
	@Autowired
	private CategoryDAO categoryDAO;
	
	@Autowired
	private ProductDAO productDAO;
	
	/**
	 * 작성자 ; 전형동
	 * 작성일 ; 2019.01.06
	 * 내용 : 메인 페이지
	 * @return
	 */
	@RequestMapping(value={"/","/home","/index"})
	public ModelAndView indexPage() {
		
		ModelAndView mv = new ModelAndView("index");
		
		mv.addObject("title", "Bstudy Page");
		
		mv.addObject("categories", categoryDAO.list());
		
		mv.addObject("userClickHome", true);
		
		return mv;
		
	}
	
	/**
	 * 작성자 : 전형동
	 * 작성일 : 2019.01.06
	 * 내용 : 카테고리 전 품목 리스트 출력
	 */
	@RequestMapping(value="/show/all/products")
	public ModelAndView showAllProducts() {
		
		ModelAndView mv = new ModelAndView("index");
		
		mv.addObject("title", "Bstudy All Products");
		
		mv.addObject("categories", categoryDAO.list());
		
		mv.addObject("userClickAllProducts", true);
		
		return mv;
		
	}
	
	/**
	 * 작성자 : 전형동
	 * 작성일 : 2019.01.06
	 * 내용 : 카테고리 품목 id별로 출력
	 * @param id
	 * @return
	 */
	@RequestMapping(value="/show/category/{id}/products")
	public ModelAndView showCategoryProducts(@PathVariable("id") int id) {
		
		ModelAndView mv = new ModelAndView("index");
		
		Category category = null;
		
		category = categoryDAO.get(id);
		
		mv.addObject("title", category.getName());
		
		mv.addObject("categories", categoryDAO.list());
		
		mv.addObject("category", category);
		
		mv.addObject("userClickCategoryProducts", true);
		
		return mv;
		
	}
	
	/**
	 * 작성자 : 전형동
	 * 작성일 : 01.15
	 * 메소드 : 상품보기
	 * @param id
	 * @return
	 */
	@RequestMapping(value = "/show/{id}/product")
	public ModelAndView showSingleProduct(@PathVariable int id) {
		
		ModelAndView mv  = new ModelAndView("index");
		
		Product product = productDAO.get(id);
		Category category = null;
		category = categoryDAO.get(id);
		
		// update the count
		product.setViews(product.getViews() + 1);
		productDAO.update(product);
		
		//-----------------------------------------------------------
		
		mv.addObject("title", product.getName());
		mv.addObject("product", product);
		
		mv.addObject("categories", categoryDAO.list());
		mv.addObject("category", category);
		
		mv.addObject("userClickShowProduct", true);
		
		return mv;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}

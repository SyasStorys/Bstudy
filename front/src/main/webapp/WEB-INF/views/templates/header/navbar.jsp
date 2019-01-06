<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- 
	작성자 : 전형동
	작성일 : 2019.01.06
	▼ 수정내용 ▼
	
	카테고리를 for문을 사용하여 View에 띄우는중
	카테고리별로 DTO를 작성하여 진행에정
	URL은 DB에 작성된 id를 활용하여 카테고리 리스트별로
	링크를 걸 에정임
-->

<nav class="navbar navbar-expand-lg">
        <div class="container"><a href="${contextRoot }/home" class="navbar-brand home"><img src="${img}/logo.png" alt="Bstudy logo" class="d-none d-md-inline-block"><img src="${img}/logo-small.png" alt="Bstudy logo" class="d-inline-block d-md-none"><span class="sr-only">Bstudy - go to homepage</span></a>
          <div class="navbar-buttons">
            <button type="button" data-toggle="collapse" data-target="#navigation" class="btn btn-outline-secondary navbar-toggler"><span class="sr-only">Toggle navigation</span><i class="fa fa-align-justify"></i></button>
            <button type="button" data-toggle="collapse" data-target="#search" class="btn btn-outline-secondary navbar-toggler"><span class="sr-only">Toggle search</span><i class="fa fa-search"></i></button><a href="basket.html" class="btn btn-outline-secondary navbar-toggler"><i class="fa fa-shopping-cart"></i></a>
          </div>
          <div id="navigation" class="collapse navbar-collapse">
            <ul class="navbar-nav mr-auto">
              <li class="nav-item"><a href="#" class="nav-link active">Home</a></li>
              <li class="nav-item dropdown menu-large"><a href="#" data-toggle="dropdown" data-hover="dropdown" data-delay="200" class="dropdown-toggle nav-link">Men<b class="caret"></b></a>
                <ul class="dropdown-menu megamenu">
                  <li>
                    <div class="row">
                      <div class="col-md-6 col-lg-3">
                        <h5>Clothing</h5>
                        <ul class="list-unstyled mb-3">
                        <c:forEach items="${categories }" var="category">
                        	<li class="nav-item"><a href="${contextRoot }/show/category/${category.id}/products" class="nav-link">${category.name }</a></li>
                        </c:forEach>
                        </ul>
                      </div>
                      <div class="col-md-6 col-lg-3">
                        <h5>Shoes</h5>
                        <ul class="list-unstyled mb-3">
                          <li class="nav-item"><a href="${contextRoot }/trainers" class="nav-link">Trainers</a></li>
                          <li class="nav-item"><a href="${contextRoot }/sandals" class="nav-link">Sandals</a></li>
                          <li class="nav-item"><a href="${contextRoot }/hikingShoes" class="nav-link">Hiking shoes</a></li>
                          <li class="nav-item"><a href="${contextRoot }/casual" class="nav-link">Casual</a></li>
                        </ul>
                      </div>
                      <div class="col-md-6 col-lg-3">
                        <h5>Accessories</h5>
                        <ul class="list-unstyled mb-3">
                          <li class="nav-item"><a href="${contextRoot }/" class="nav-link">Trainers</a></li>
                          <li class="nav-item"><a href="${contextRoot }/trainers" class="nav-link">Trainers</a></li>
                          <li class="nav-item"><a href="${contextRoot }/sandals" class="nav-link">Sandals</a></li>
                          <li class="nav-item"><a href="${contextRoot }/hikingShoes" class="nav-link">Hiking shoes</a></li>
                          <li class="nav-item"><a href="${contextRoot }/casual" class="nav-link">Casual</a></li>
                        </ul>
                      </div>
                      <div class="col-md-6 col-lg-3">
                        <h5>Featured</h5>
                        <ul class="list-unstyled mb-3">
                          <li class="nav-item"><a href="${contextRoot }/" class="nav-link">Trainers</a></li>
                          <li class="nav-item"><a href="${contextRoot }/trainers" class="nav-link">Trainers</a></li>
                          <li class="nav-item"><a href="${contextRoot }/sandals" class="nav-link">Sandals</a></li>
                          <li class="nav-item"><a href="${contextRoot }/hikingShoes" class="nav-link">Hiking shoes</a></li>
                          <li class="nav-item"><a href="${contextRoot }/casual" class="nav-link">Casual</a></li>
                        </ul>
                        <h5>Looks and trends</h5>
                        <ul class="list-unstyled mb-3">
                          <li class="nav-item"><a href="${contextRoot }/trainers" class="nav-link">Trainers</a></li>
                          <li class="nav-item"><a href="${contextRoot }/sandals" class="nav-link">Sandals</a></li>
                          <li class="nav-item"><a href="${contextRoot }/hikingShoes" class="nav-link">Hiking shoes</a></li>
                          <li class="nav-item"><a href="${contextRoot }/casual" class="nav-link">Casual</a></li>
                        </ul>
                      </div>
                    </div>
                  </li>
                </ul>
              </li>
              <li class="nav-item dropdown menu-large"><a href="#" data-toggle="dropdown" data-hover="dropdown" data-delay="200" class="dropdown-toggle nav-link">Ladies<b class="caret"></b></a>
                <ul class="dropdown-menu megamenu">
                  <li>
                    <div class="row">
                      <div class="col-md-6 col-lg-3">
                        <h5>Clothing</h5>
                        <ul class="list-unstyled mb-3">
                          <li class="nav-item"><a href="${contextRoot }/trainers" class="nav-link">Trainers</a></li>
                          <li class="nav-item"><a href="${contextRoot }/sandals" class="nav-link">Sandals</a></li>
                          <li class="nav-item"><a href="${contextRoot }/hikingShoes" class="nav-link">Hiking shoes</a></li>
                          <li class="nav-item"><a href="${contextRoot }/casual" class="nav-link">Casual</a></li>
                        </ul>
                      </div>
                      <div class="col-md-6 col-lg-3">
                        <h5>Shoes</h5>
                        <ul class="list-unstyled mb-3">
                          <li class="nav-item"><a href="${contextRoot }/trainers" class="nav-link">Trainers</a></li>
                          <li class="nav-item"><a href="${contextRoot }/sandals" class="nav-link">Sandals</a></li>
                          <li class="nav-item"><a href="${contextRoot }/hikingShoes" class="nav-link">Hiking shoes</a></li>
                          <li class="nav-item"><a href="${contextRoot }/casual" class="nav-link">Casual</a></li>
                        </ul>
                      </div>
                      <div class="col-md-6 col-lg-3">
                        <h5>Accessories</h5>
                        <ul class="list-unstyled mb-3">
                          <li class="nav-item"><a href="${contextRoot }/trainers" class="nav-link">Trainers</a></li>
                          <li class="nav-item"><a href="${contextRoot }/sandals" class="nav-link">Sandals</a></li>
                          <li class="nav-item"><a href="${contextRoot }/hikingShoes" class="nav-link">Hiking shoes</a></li>
                          <li class="nav-item"><a href="${contextRoot }/casual" class="nav-link">Casual</a></li>
                        </ul>
                        <h5>Looks and trends</h5>
                        <ul class="list-unstyled mb-3">
                          <li class="nav-item"><a href="${contextRoot }/trainers" class="nav-link">Trainers</a></li>
                          <li class="nav-item"><a href="${contextRoot }/sandals" class="nav-link">Sandals</a></li>
                          <li class="nav-item"><a href="${contextRoot }/hikingShoes" class="nav-link">Hiking shoes</a></li>
                          <li class="nav-item"><a href="${contextRoot }/casual" class="nav-link">Casual</a></li>
                        </ul>
                      </div>
                      <div class="col-md-6 col-lg-3">
                        <div class="banner"><a href="#"><img src="${img}/banner.jpg" alt="" class="img img-fluid"></a></div>
                        <div class="banner"><a href="#"><img src="${img}/banner2.jpg" alt="" class="img img-fluid"></a></div>
                      </div>
                    </div>
                  </li>
                </ul>
              </li>
              <li class="nav-item dropdown menu-large"><a href="#" data-toggle="dropdown" data-hover="dropdown" data-delay="200" class="dropdown-toggle nav-link">Template<b class="caret"></b></a>
                <ul class="dropdown-menu megamenu">
                  <li>
                    <div class="row">
                      <div class="col-md-6 col-lg-3">
                        <h5>Shop</h5>
                        <ul class="list-unstyled mb-3">
                          <li class="nav-item"><a href="index.html" class="nav-link">Homepage</a></li>
                          <li class="nav-item"><a href="category.html" class="nav-link">Category - sidebar left</a></li>
                          <li class="nav-item"><a href="category-right.html" class="nav-link">Category - sidebar right</a></li>
                          <li class="nav-item"><a href="category-full.html" class="nav-link">Category - full width</a></li>
                          <li class="nav-item"><a href="detail.html" class="nav-link">Product detail</a></li>
                        </ul>
                      </div>
                      <div class="col-md-6 col-lg-3">
                        <h5>User</h5>
                        <ul class="list-unstyled mb-3">
                          <li class="nav-item"><a href="register.html" class="nav-link">Register / login</a></li>
                          <li class="nav-item"><a href="customer-orders.html" class="nav-link">Orders history</a></li>
                          <li class="nav-item"><a href="customer-order.html" class="nav-link">Order history detail</a></li>
                          <li class="nav-item"><a href="customer-wishlist.html" class="nav-link">Wishlist</a></li>
                          <li class="nav-item"><a href="customer-account.html" class="nav-link">Customer account / change password</a></li>
                        </ul>
                      </div>
                      <div class="col-md-6 col-lg-3">
                        <h5>Order process</h5>
                        <ul class="list-unstyled mb-3">
                          <li class="nav-item"><a href="basket.html" class="nav-link">Shopping cart</a></li>
                          <li class="nav-item"><a href="checkout1.html" class="nav-link">Checkout - step 1</a></li>
                          <li class="nav-item"><a href="checkout2.html" class="nav-link">Checkout - step 2</a></li>
                          <li class="nav-item"><a href="checkout3.html" class="nav-link">Checkout - step 3</a></li>
                          <li class="nav-item"><a href="checkout4.html" class="nav-link">Checkout - step 4</a></li>
                        </ul>
                      </div>
                      <div class="col-md-6 col-lg-3">
                        <h5>Pages and blog</h5>
                        <ul class="list-unstyled mb-3">
                          <li class="nav-item"><a href="blog.html" class="nav-link">Blog listing</a></li>
                          <li class="nav-item"><a href="post.html" class="nav-link">Blog Post</a></li>
                          <li class="nav-item"><a href="faq.html" class="nav-link">FAQ</a></li>
                          <li class="nav-item"><a href="text.html" class="nav-link">Text page</a></li>
                          <li class="nav-item"><a href="text-right.html" class="nav-link">Text page - right sidebar</a></li>
                          <li class="nav-item"><a href="404.html" class="nav-link">404 page</a></li>
                          <li class="nav-item"><a href="contact.html" class="nav-link">Contact</a></li>
                        </ul>
                      </div>
                    </div>
                  </li>
                </ul>
              </li>
            </ul>
            <div class="navbar-buttons d-flex justify-content-end">
              <!-- /.nav-collapse-->
              <div id="search-not-mobile" class="navbar-collapse collapse"></div><a data-toggle="collapse" href="#search" class="btn navbar-btn btn-primary d-none d-lg-inline-block"><span class="sr-only">Toggle search</span><i class="fa fa-search"></i></a>
              <div id="basket-overview" class="navbar-collapse collapse d-none d-lg-block"><a href="basket.html" class="btn btn-primary navbar-btn"><i class="fa fa-shopping-cart"></i><span>3 items in cart</span></a></div>
            </div>
          </div>
        </div>
      </nav>
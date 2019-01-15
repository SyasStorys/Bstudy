<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div id="productMain" class="row">
	<div class="col-md-6">
		<div data-slider-id="1" class="owl-carousel shop-detail-carousel">
			<div class="item"> <img src="${img }/${product.code }.jpg" alt="" class="img-fluid img img-responsive"></div>
            <div class="item"> <img src="${img }/${product.code }.jpg" alt="" class="img-fluid img img-responsive"></div>
            <div class="item"> <img src="${img }/${product.code }.jpg" alt="" class="img-fluid img img-responsive"></div>
		</div>
		<div class="ribbon sale">
			<div class="theribbon">SALE</div>
			<div class="ribbon-background"></div>
		</div>
		<!-- /.ribbon-->
		<div class="ribbon new">
			<div class="theribbon">NEW</div>
			<div class="ribbon-background"></div>
		</div>
		<!-- /.ribbon-->
	</div>
	<div class="col-md-6">
		<div class="box">
			<h1 class="text-center">${product.name }</h1>
			<p class="goToDescription">
				<a href="#details" class="scroll-to">${product.description }</a>
			</p>
			<p class="price">&#8361; ${product.unitPrice }</p>
			<p class="text-center buttons">
				<a href="${contextRoot }/cart/add/${product.id}/product" class="btn btn-primary"><i class="fa fa-shopping-cart"></i>장바구니 담기</a>
				<a href="#" class="btn btn-outline-primary"><i class="fa fa-heart"></i> 구매하기 </a>
			</p>
		</div>
		<div data-slider-id="1" class="owl-thumbs">
			<button class="owl-thumb-item">
				<img src="${img }/${product.code }.jpg" alt="" class="img-fluid">
			</button>
			<button class="owl-thumb-item">
				<img src="${img }/${product.code }.jpg" alt="" class="img-fluid">
			</button>
			<button class="owl-thumb-item">
				<img src="${img }/${product.code }.jpg" alt="" class="img-fluid">
			</button>
		</div>
	</div>
</div>
<div id="details" class="box">
	<p></p>
	<h4>Product details</h4>
	<p>White lace top, woven, has a round neck, short sleeves, has
		knitted lining attached</p>
	<h4>Material &amp; care</h4>
	<ul>
		<li>Polyester</li>
		<li>Machine wash</li>
	</ul>
	<h4>Size &amp; Fit</h4>
	<ul>
		<li>Regular fit</li>
		<li>The model (height 5'8" and chest 33") is wearing a size S</li>
	</ul>
	<blockquote>
		<p>
			<em>Define style this season with Armani's new range of trendy
				tops, crafted with intricate details. Create a chic statement look
				by teaming this lace number with skinny jeans and pumps.</em>
		</p>
	</blockquote>
	<hr>
	<div class="social">
		<h4>Show it to your friends</h4>
		<p>
			<a href="#" class="external facebook"><i class="fa fa-facebook"></i></a><a
				href="#" class="external gplus"><i class="fa fa-google-plus"></i></a><a
				href="#" class="external twitter"><i class="fa fa-twitter"></i></a><a
				href="#" class="email"><i class="fa fa-envelope"></i></a>
		</p>
	</div>
</div>
<div class="row same-height-row">
	<div class="col-lg-3 col-md-6">
		<div class="box same-height">
			<h3>You may also like these products</h3>
		</div>
	</div>
	<div class="col-lg-3 col-md-6">
		<div class="product same-height">
			<div class="flip-container">
				<div class="flipper">
					<div class="front">
						<a href="detail.html"><img src="${img}/${product.code}.jpg" alt=""
							class="img-fluid"></a>
					</div>
					<div class="back">
						<a href="detail.html"><img src="${img}/${product.code}.jpg" alt=""
							class="img-fluid"></a>
					</div>
				</div>
			</div>
			<a href="detail.html" class="invisible"><img
				src="${img}/${product.code}2.jpg" alt="" class="img-fluid"></a>
			<div class="text">
				<h3>Fur coat</h3>
				<p class="price">$143</p>
			</div>
		</div>
		<!-- /.product-->
	</div>
	<div class="col-lg-3 col-md-6">
		<div class="product same-height">
			<div class="flip-container">
				<div class="flipper">
					<div class="front">
						<a href="detail.html"><img src="${img}/${product.code}.jpg" alt=""
							class="img-fluid"></a>
					</div>
					<div class="back">
						<a href="detail.html"><img src="${img}/${product.code}.jpg" alt=""
							class="img-fluid"></a>
					</div>
				</div>
			</div>
			<a href="detail.html" class="invisible"><img
				src="${img}/${product.code}1.jpg" alt="" class="img-fluid"></a>
			<div class="text">
				<h3>Fur coat</h3>
				<p class="price">$143</p>
			</div>
		</div>
		<!-- /.product-->
	</div>
	<div class="col-lg-3 col-md-6">
		<div class="product same-height">
			<div class="flip-container">
				<div class="flipper">
					<div class="front">
						<a href="detail.html"><img src="${img}/${product.code}.jpg" alt=""
							class="img-fluid"></a>
					</div>
					<div class="back">
						<a href="detail.html"><img src="${img}/${product.code}.jpg" alt=""
							class="img-fluid"></a>
					</div>
				</div>
			</div>
			<a href="detail.html" class="invisible"><img
				src="${img}/${product.code}3.jpg" alt="" class="img-fluid"></a>
			<div class="text">
				<h3>Fur coat</h3>
				<p class="price">$143</p>
			</div>
		</div>
		<!-- /.product-->
	</div>
</div>
<div class="row same-height-row">
	<div class="col-lg-3 col-md-6">
		<div class="box same-height">
			<h3>Products viewed recently</h3>
		</div>
	</div>
	<div class="col-lg-3 col-md-6">
		<div class="product same-height">
			<div class="flip-container">
				<div class="flipper">
					<div class="front">
						<a href="detail.html"><img src="${img}/${product.code}.jpg" alt=""
							class="img-fluid"></a>
					</div>
					<div class="back">
						<a href="detail.html"><img src="${img}/${product.code}.jpg" alt=""
							class="img-fluid"></a>
					</div>
				</div>
			</div>
			<a href="detail.html" class="invisible"><img
				src="${img}/${product.code}2.jpg" alt="" class="img-fluid"></a>
			<div class="text">
				<h3>Fur coat</h3>
				<p class="price">$143</p>
			</div>
		</div>
		<!-- /.product-->
	</div>
	<div class="col-lg-3 col-md-6">
		<div class="product same-height">
			<div class="flip-container">
				<div class="flipper">
					<div class="front">
						<a href="detail.html"><img src="${img}/${product.code}.jpg" alt=""
							class="img-fluid"></a>
					</div>
					<div class="back">
						<a href="detail.html"><img src="${img}/${product.code}.jpg" alt=""
							class="img-fluid"></a>
					</div>
				</div>
			</div>
			<a href="detail.html" class="invisible"><img
				src="${img}/${product.code}1.jpg" alt="" class="img-fluid"></a>
			<div class="text">
				<h3>Fur coat</h3>
				<p class="price">$143</p>
			</div>
		</div>
		<!-- /.product-->
	</div>
	<div class="col-lg-3 col-md-6">
		<div class="product same-height">
			<div class="flip-container">
				<div class="flipper">
					<div class="front">
						<a href="detail.html"><img src="${img}/${product.code}.jpg" alt=""
							class="img-fluid"></a>
					</div>
					<div class="back">
						<a href="detail.html"><img src="${img}/${product.code}.jpg" alt=""
							class="img-fluid"></a>
					</div>
				</div>
			</div>
			<a href="detail.html" class="invisible"><img
				src="${img}/${product.code}.jpg" alt="" class="img-fluid"></a>
			<div class="text">
				<h3>Fur coat</h3>
				<p class="price">$143</p>
			</div>
		</div>
		<!-- /.product-->
	</div>
</div>
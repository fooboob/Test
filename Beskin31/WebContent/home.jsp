<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<title>씨발개새끼야</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/font-awesome.min.css" rel="stylesheet">
<link href="css/prettyPhoto.css" rel="stylesheet">
<link href="css/price-range.css" rel="stylesheet">
<link href="css/animate.css" rel="stylesheet">
<link href="css/main.css" rel="stylesheet">
<link href="css/responsive.css" rel="stylesheet">
<script src="js/sweetalert.min.js"></script>
<link rel="stylesheet" href="css/sweetalert.css">

<!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->
<link rel="shortcut icon" href="images/ico/favicon.ico">
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="images/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="images/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="images/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="images/ico/apple-touch-icon-57-precomposed.png">
</head>
<script>
	function btnclick() {
		swal({
			title : "선택 완료!",
			text : "장바구니로 이동하여 상품 선택을 마치시겠어요?",
			type : "warning",
			showCancelButton : true,
			confirmButtonColor : "#DD6B55",
			confirmButtonText : "장바구니로 갈래요",
			cancelButtonText : "더 고를래요",
			closeOnConfirm : false,
			closeOnCancel : false
		}, function(isConfirm) {
			if (isConfirm) {
				swal({
					title : "장바구니로 이동합니다.",
					showConfirmButton : false
				});
				location.href = "cart.jsp";

			} else {
				swal("ㅇㅋ", "더 구경하도록해 ", "error");

			}
		});
	}
</script>
<!--/head-->

<body>

	<jsp:include page="/header.jsp"></jsp:include>


	<section id="slider"> <!--slider-->
	<div class="container">
		<div class="row">
			<div class="col-sm-12">
				<div id="slider-carousel" class="carousel slide"
					data-ride="carousel">
					<ol class="carousel-indicators">
						<li data-target="#slider-carousel" data-slide-to="0"
							class="active"></li>
						<li data-target="#slider-carousel" data-slide-to="1"></li>
						<li data-target="#slider-carousel" data-slide-to="2"></li>
						<li data-target="#slider-carousel" data-slide-to="3"></li>
					</ol>

					<div class="carousel-inner">
						<div class="item active">
							<!-- <div class="col-sm-6">
									<h1><span>ㅎㅎ</span>존나하기싫당</h1>
									<h2>아이스크림 사먹으세여</h2>
									<p>근데좀 비싸여 ㅋ </p>
									<button type="button" class="btn btn-default get">주문하기</button>
								</div>  -->
							<div>
								<img src="images/home/event1.png" class="girl img-responsive"
									alt="" />

							</div>
						</div>
						<div class="item">
							<!-- <div class="col-sm-6">
									<h1><span>베스킨</span>라빈스</h1>
									<h2>존나맛잇어여</h2>
									<p>잡솨보세여 </p>
									<button type="button" class="btn btn-default get">주문하기</button>
								</div>  -->
							<div>
								<img src="images/home/event2.png" class="girl img-responsive"
									alt="" />
								<!-- <img src="images/home/pricing.png"  class="pricing" alt="" /> -->
							</div>
						</div>

						<div class="item">
							<!-- <div class="col-sm-6">
									<h1><span>개새끼야</span>아직도 안사먹었어?</h1>
									<h2>아이스크림 사먹어</h2>
									<p>개새끼야 </p>
									<button type="button" class="btn btn-default get">주문하기</button>
								</div> -->
							<div>
								<img src="images/home/event3.png" class="girl img-responsive"
									alt="" />

							</div>
						</div>

						<div class="item">
							<!-- <div class="col-sm-6">
									<h1><span>개새끼야</span>아직도 안사먹었어?</h1>
									<h2>아이스크림 사먹어</h2>
									<p>개새끼야 </p>
									<button type="button" class="btn btn-default get">주문하기</button>
								</div> -->
							<div>
								<img src="images/home/event4.png" class="girl img-responsive"
									alt="" />

							</div>
						</div>

					</div>

					<a href="#slider-carousel" class="left control-carousel hidden-xs"
						data-slide="prev"> <i class="fa fa-angle-left"></i>
					</a> <a href="#slider-carousel"
						class="right control-carousel hidden-xs" data-slide="next"> <i
						class="fa fa-angle-right"></i>
					</a>

				</div>



			</div>
		</div>
	</div>
	</section>

	<!--/slider-->

	<section>
	<div class="container">
		<div class="row">

			<div class="col-sm-9">
				<div class="features_items">
					<!--features_items-->
					<h2 class="title text-center">내게 맞는 제품</h2>

					<!-- 상품 !! -->
					<%
						ArrayList<String> list = new ArrayList<String>();
						list.add("images/icecream/1.png");
						list.add("images/icecream/2.png");
						list.add("images/icecream/3.png");
						list.add("images/icecream/4.png");
						list.add("images/icecream/5.png");
						list.add("images/icecream/6.png");
						list.add("images/icecream/7.png");
						list.add("images/icecream/8.png");
						list.add("images/icecream/9.png");
						list.add("images/icecream/10.png");
						list.add("images/icecream/11.png");
						list.add("images/icecream/12.png");
						list.add("images/icecream/13.png");
						list.add("images/icecream/14.png");
						list.add("images/icecream/15.png");
						list.add("images/icecream/16.png");

						for (int i = 0; i < 16; i++) {
					%>
					<div class="col-sm-4">
						<div class="product-image-wrapper">
							<div class="single-products">
								<div class="productinfo text-center">
									<img src="<%=list.get(i)%>" alt="" />
									<h2>컵 : 2800 콘 : 3400</h2>
									<p>전나맛잇음</p>
									<button class="btn btn-default add-to-cart"
										onclick="btnclick()">
										<i class="fa fa-shopping-cart"></i>주문하긔
									</button>
								</div>
							</div>
						</div>
					</div>
					<!-- 상품 !! -->
					<%
						}
					%>

				</div>
				<!--features_items-->
				<div class="recommended_items">
					<!--recommended_items-->
					<h2 class="title text-center">다른 사람들의 선택</h2>

					<div id="recommended-item-carousel" class="carousel slide"
						data-ride="carousel">
						<div class="carousel-inner">
							<div class="item active">
								<div class="col-sm-4">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="images/home/recommend1.jpg" alt="" />
												<h2>$56</h2>
												<p>Easy Polo Black Edition</p>
												<a href="#" class="btn btn-default add-to-cart"><i
													class="fa fa-shopping-cart"></i>Add to cart</a>
											</div>

										</div>
									</div>
								</div>
								<div class="col-sm-4">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="images/home/recommend2.jpg" alt="" />
												<h2>$56</h2>
												<p>Easy Polo Black Edition</p>
												<a href="#" class="btn btn-default add-to-cart"><i
													class="fa fa-shopping-cart"></i>Add to cart</a>
											</div>

										</div>
									</div>
								</div>
								<div class="col-sm-4">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="images/home/recommend3.jpg" alt="" />
												<h2>$56</h2>
												<p>Easy Polo Black Edition</p>
												<a href="#" class="btn btn-default add-to-cart"><i
													class="fa fa-shopping-cart"></i>Add to cart</a>
											</div>

										</div>
									</div>
								</div>
							</div>
							<div class="item">
								<div class="col-sm-4">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="images/home/recommend1.jpg" alt="" />
												<h2>$56</h2>
												<p>Easy Polo Black Edition</p>
												<a href="#" class="btn btn-default add-to-cart"><i
													class="fa fa-shopping-cart"></i>Add to cart</a>
											</div>

										</div>
									</div>
								</div>
								<div class="col-sm-4">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="images/home/recommend2.jpg" alt="" />
												<h2>$56</h2>
												<p>Easy Polo Black Edition</p>
												<a href="#" class="btn btn-default add-to-cart"><i
													class="fa fa-shopping-cart"></i>Add to cart</a>
											</div>

										</div>
									</div>
								</div>
								<div class="col-sm-4">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="images/home/recommend3.jpg" alt="" />
												<h2>$56</h2>
												<p>Easy Polo Black Edition</p>
												<a href="#" class="btn btn-default add-to-cart"><i
													class="fa fa-shopping-cart"></i>Add to cart</a>
											</div>

										</div>
									</div>
								</div>
							</div>
						</div>
						<a class="left recommended-item-control"
							href="#recommended-item-carousel" data-slide="prev"> <i
							class="fa fa-angle-left"></i>
						</a> <a class="right recommended-item-control"
							href="#recommended-item-carousel" data-slide="next"> <i
							class="fa fa-angle-right"></i>
						</a>
					</div>
				</div>
				<!--/recommended_items-->

			</div>
		</div>
	</div>



	</section>




	<jsp:include page="/footer.jsp"></jsp:include>


	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.scrollUp.min.js"></script>
	<script src="js/price-range.js"></script>
	<script src="js/jquery.prettyPhoto.js"></script>
	<script src="js/main.js"></script>
</body>
</html>
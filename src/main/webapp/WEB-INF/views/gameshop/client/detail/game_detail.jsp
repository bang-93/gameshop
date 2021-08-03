<%@page import="kr.co.gameshop.vo.Game" %>
<%@ page contentType="text/html;charset=UTF-8"%>
<%
   Game gameInfo=(Game)request.getAttribute("game_info");
%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title  -->
    <title>Game Details</title>

    <!-- Favicon  -->
    <link rel="icon" href="/resources/client/img/core-img/favicon.ico">

    <!-- Core Style CSS -->
    <link rel="stylesheet" href="/resources/client/css/core-style.css">
    <link rel="stylesheet" href="/resources/client/style.css">

    <!-- Responsive CSS -->
    <link href="/resources/client/css/responsive.css" rel="stylesheet">
    
    <link rel="preconnect" href="https://fonts.googleapis.com">    
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=East+Sea+Dokdo&display=swap" rel="stylesheet">
	
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Gowun+Batang&display=swap" rel="stylesheet">

<style type="text/css">

#game_title{
	font-family: 'East Sea Dokdo', cursive;
	font-size: 130px;
	margin-top: -7%;
}

#game_content{
	font-family: 'Gowun Batang', serif;
	font-size: 19px;
	font-weight: bold;
}

#game_genre{
	font-family: 'Gowun Batang', serif;
	font-size: 40px;
	margin-top: 20px;
}

#game_price{
	font-family: 'Gowun Batang', serif;
	font-size: 40px;
}

#game_capacity{
	font-family: 'Gowun Batang', serif;
	font-size: 40px;
	margin-bottom: 20px;
}

</style>
</head>
<body>
<%@ include file="../../client/inc/header.jsp" %> 

    <div id="wrapper">

        <!-- <<<<<<<<<<<<<<<<<<<< Single Product Details Area Start >>>>>>>>>>>>>>>>>>>>>>>>> -->
        <section class="single_product_details_area section_padding_0_100">
            <div class="container" style="min-width: 85%">
                <div class="row">

                    <div class="col-12 col-md-6">
                        <div class="single_product_thumb">

								<!-- 상품 이미지 -->
                                <div class="carousel-inner">
                                    <div class="carousel-item active">
                                        <img class="d-block w-100" src="/<%=gameInfo.getGame_img() %>">
                                    </a>
                                    </div>
                                </div>
                        </div>
                    </div>

                    <div class="col-12 col-md-6">
                        <div class="single_product_desc">
							
							<input type="hidden" value=<%=gameInfo.getGame_id() %>>
							
							<div id="game_title">
                            	<td class="title"><%=gameInfo.getGame_title() %></td>
                            	<hr>							
							</div>							
							
							<div id="game_content" style="width: 90%">
                            	<td class="content"><%=gameInfo.getGame_content() %></td>
							</div>
							
							<div id="game_genre">
                            	<td class="genre">장르 : <%=gameInfo.getGame_genre() %></td>
							</div>
							
							<div id="game_price">
                            	<td class="price">가격 : <%=gameInfo.getGame_price() %></td>
							</div>
							
							<div id="game_capacity">
                            	<td class="capacity">용량 : <%=gameInfo.getGame_capacity() %></td>
							</div>

                            <!-- Add to Cart Form -->
                            <form class="cart clearfix mb-50 d-flex" method="post">
<!--                             
                                <div class="quantity">
                                    <span class="qty-minus" onclick="var effect = document.getElementById('qty'); var qty = effect.value; if( !isNaN( qty ) &amp;&amp; qty &gt; 1 ) effect.value--;return false;"><i class="fa fa-minus" aria-hidden="true"></i></span>
                                    <input type="number" class="qty-text" id="qty" step="1" min="1" max="12" name="quantity" value="1">
                                    <span class="qty-plus" onclick="var effect = document.getElementById('qty'); var qty = effect.value; if( !isNaN( qty )) effect.value++;return false;"><i class="fa fa-plus" aria-hidden="true"></i></span>
                                </div>
                                 -->
                                <button type="submit" name="addtocart" value="5" class="btn cart-submit d-block">Add to cart</button>
                            </form>

                            <div id="accordion" role="tablist">
                                <div class="card">
                                    <div class="card-header" role="tab" id="headingOne">
                                        <h6 class="mb-0">
                                            <a aria-expanded="true" aria-controls="collapseOne">Information</a>
                                        </h6>
                                    </div>

                                    <div aria-labelledby="headingOne" data-parent="#accordion">
                                        <div class="card-body">
                                            <p>컨텐츠 내용</p>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- <<<<<<<<<<<<<<<<<<<< Single Product Details Area End >>>>>>>>>>>>>>>>>>>>>>>>> -->

        <!-- ****** Quick View Modal Area Start ****** -->
        <div class="modal fade" id="quickview" tabindex="-1" role="dialog" aria-labelledby="quickview" aria-hidden="true">
            <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
                <div class="modal-content">
                    <button type="button" class="close btn" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                    <div class="modal-body">
                        <div class="quickview_body">
                            <div class="container">
                                <div class="row">
                                    <div class="col-12 col-lg-5">
                                        <div class="quickview_pro_img">
                                            <img src="/resources/client/img/product-img/product-1.jpg" alt="">
                                        </div>
                                    </div>
                                    <div class="col-12 col-lg-7">
                                        <div class="quickview_pro_des">
                                            <h4 class="title">Boutique Silk Dress</h4>
                                            <div class="top_seller_product_rating mb-15">
                                                <i class="fa fa-star" aria-hidden="true"></i>
                                                <i class="fa fa-star" aria-hidden="true"></i>
                                                <i class="fa fa-star" aria-hidden="true"></i>
                                                <i class="fa fa-star" aria-hidden="true"></i>
                                                <i class="fa fa-star" aria-hidden="true"></i>
                                            </div>
                                            <h5 class="price">$120.99 <span>$130</span></h5>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia expedita quibusdam aspernatur, sapiente consectetur accusantium perspiciatis praesentium eligendi, in fugiat?</p>
                                            <a href="#">View Full Product Details</a>
                                        </div>
                                        <!-- Add to Cart Form -->
                                        <form class="cart" method="post">
                                            <div class="quantity">
                                                <span class="qty-minus" onclick="var effect = document.getElementById('qty'); var qty = effect.value; if( !isNaN( qty ) &amp;&amp; qty &gt; 1 ) effect.value--;return false;"><i class="fa fa-minus" aria-hidden="true"></i></span>

                                                <input type="number" class="qty-text" id="qty2" step="1" min="1" max="12" name="quantity" value="1">

                                                <span class="qty-plus" onclick="var effect = document.getElementById('qty'); var qty = effect.value; if( !isNaN( qty )) effect.value++;return false;"><i class="fa fa-plus" aria-hidden="true"></i></span>
                                            </div>
                                            <button type="submit" name="addtocart" value="5" class="cart-submit">Add to cart</button>
                                            <!-- Wishlist -->
                                            <div class="modal_pro_wishlist">
                                                <a href="wishlist.html" target="_blank"><i class="ti-heart"></i></a>
                                            </div>
                                            <!-- Compare -->
                                            <div class="modal_pro_compare">
                                                <a href="compare.html" target="_blank"><i class="ti-stats-up"></i></a>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- ****** Quick View Modal Area End ****** -->

    </div>
    <!-- /.wrapper end -->

    <!-- jQuery (Necessary for All JavaScript Plugins) -->
    <script src="/resources/client/js/jquery/jquery-2.2.4.min.js"></script>
    <!-- Popper js -->
    <script src="/resources/client/js/popper.min.js"></script>
    <!-- Bootstrap js -->
    <script src="/resources/client/js/bootstrap.min.js"></script>
    <!-- Plugins js -->
    <script src="/resources/client/js/plugins.js"></script>
    <!-- Active js -->
    <script src="/resources/client/js/active.js"></script>
    
    

</body>

</html>
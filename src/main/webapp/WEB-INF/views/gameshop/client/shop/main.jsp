<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title  -->
    <title>Game Shop main</title>

    <!-- Core Style CSS -->
    <link rel="stylesheet" href="/resources/client/css/core-style.css">
    <link rel="stylesheet" href="/resources/client/style.css">

    <!-- Responsive CSS -->
    <link href="/resources/client/css/responsive.css" rel="stylesheet">

</head>

<body>

    <div id="wrapper">
    
        <!-- Top Header Area Start -->
        <%@ include file="../inc/header.jsp" %>
        <!-- 밖으로 두 번 나가야한다 -->
        <!-- ****** Header Area End ****** -->

        <!-- ****** list area Start ****** -->
        <!-- ****** Quick View Modal Area End ****** -->

        <section class="shop_grid_area section_padding_100">
            <div class="container">
                <div class="row">
                    <div class="col-12 col-md-4 col-lg-3">
                        <div class="shop_sidebar_area">
                           
                            <div class="widget catagory mb-50">
                                <!--  Side Nav  -->
                                <div class="nav-side-menu">
                                    <h6 class="mb-0">카테고리</h6>
                                    <div class="menu-list">
                                        <ul id="menu-content2" class="menu-content collapse out">
                                            <!-- Single Item -->
                                            <li data-toggle="collapse" data-target="#women2">
                                                <a href="#">액션</a>
                                            </li>
                                            <!-- Single Item -->
                                            <li data-toggle="collapse" data-target="#man2" class="collapsed">
                                                <a href="#">RPG</a>
                                            </li>
                                            <!-- Single Item -->
                                            <li data-toggle="collapse" data-target="#kids2" class="collapsed">
                                                <a href="#">공포</a>
                                            </li>
                                            <!-- Single Item -->
                                            <li data-toggle="collapse" data-target="#bags2" class="collapsed">
                                                <a href="#">FPS</a>
                                            </li>
                                            <!-- Single Item -->
                                            <li data-toggle="collapse" data-target="#eyewear2" class="collapsed">
                                                <a href="#">시뮬레이션</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>

                            <div class="widget price mb-50">
                                
                            </div>

                            <div class="widget color mb-70">
                                
                            </div>

                            <div class="widget size mb-50">
                          
                            </div>

                            <div class="widget recommended">
                                <h6 class="widget-title mb-30">Recommended</h6>

                                <div class="widget-desc">
                                    <!-- Single Recommended Product -->
                                    <div class="single-recommended-product d-flex mb-30">
                                        <div class="single-recommended-thumb mr-3">
                                            <img src="img/product-img/product-10.jpg" alt="">
                                        </div>
                                        <div class="single-recommended-desc">
                                            <h6>Menâs T-shirt</h6>
                                            <p>$ 39.99</p>
                                        </div>
                                    </div>
                                    <!-- Single Recommended Product -->
                                    <div class="single-recommended-product d-flex mb-30">
                                        <div class="single-recommended-thumb mr-3">
                                            <img src="img/product-img/product-11.jpg" alt="">
                                        </div>
                                        <div class="single-recommended-desc">
                                            <h6>Blue mini top</h6>
                                            <p>$ 19.99</p>
                                        </div>
                                    </div>
                                    <!-- Single Recommended Product -->
                                    <div class="single-recommended-product d-flex">
                                        <div class="single-recommended-thumb mr-3">
                                            <img src="img/product-img/product-12.jpg" alt="">
                                        </div>
                                        <div class="single-recommended-desc">
                                            <h6>Womenâs T-shirt</h6>
                                            <p>$ 39.99</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-12 col-md-8 col-lg-9">
                        <div class="shop_grid_product_area">
                            <div class="row">

                                <!-- Single gallery Item -->
                                <div class="col-12 col-sm-6 col-lg-4 single_gallery_item wow fadeInUpBig" data-wow-delay="0.2s">
                                    <!-- Product Image -->
                                    <div class="product-img">
                                        <img src="img/product-img/product-1.jpg" alt="">
                                        <div class="product-quicview">
                                            <a href="#" data-toggle="modal" data-target="#quickview"><i class="ti-plus"></i></a>
                                        </div>
                                    </div>
                                    <!-- Product Description -->
                                    <div class="product-description">
                                        <h4 class="product-price">$39.90</h4>
                                        <p>Jeans midi cocktail dress</p>
                                        <!-- Add to Cart -->
                                        <a href="#" class="add-to-cart-btn">ADD TO CART</a>
                                    </div>
                                </div>

                                <!-- Single gallery Item -->
                                <div class="col-12 col-sm-6 col-lg-4 single_gallery_item wow fadeInUpBig" data-wow-delay="0.3s">
                                    <!-- Product Image -->
                                    <div class="product-img">
                                        <img src="img/product-img/product-2.jpg" alt="">
                                        <div class="product-quicview">
                                            <a href="#" data-toggle="modal" data-target="#quickview"><i class="ti-plus"></i></a>
                                        </div>
                                    </div>
                                    <!-- Product Description -->
                                    <div class="product-description">
                                        <h4 class="product-price">$39.90</h4>
                                        <p>Jeans midi cocktail dress</p>
                                        <!-- Add to Cart -->
                                        <a href="#" class="add-to-cart-btn">ADD TO CART</a>
                                    </div>
                                </div>

                                <!-- Single gallery Item -->
                                <div class="col-12 col-sm-6 col-lg-4 single_gallery_item wow fadeInUpBig" data-wow-delay="0.4s">
                                    <!-- Product Image -->
                                    <div class="product-img">
                                        <img src="img/product-img/product-3.jpg" alt="">
                                        <div class="product-quicview">
                                            <a href="#" data-toggle="modal" data-target="#quickview"><i class="ti-plus"></i></a>
                                        </div>
                                    </div>
                                    <!-- Product Description -->
                                    <div class="product-description">
                                        <h4 class="product-price">$39.90</h4>
                                        <p>Jeans midi cocktail dress</p>
                                        <!-- Add to Cart -->
                                        <a href="#" class="add-to-cart-btn">ADD TO CART</a>
                                    </div>
                                </div>

                                <!-- Single gallery Item -->
                                <div class="col-12 col-sm-6 col-lg-4 single_gallery_item wow fadeInUpBig" data-wow-delay="0.5s">
                                    <!-- Product Image -->
                                    <div class="product-img">
                                        <img src="img/product-img/product-4.jpg" alt="">
                                        <div class="product-quicview">
                                            <a href="#" data-toggle="modal" data-target="#quickview"><i class="ti-plus"></i></a>
                                        </div>
                                    </div>
                                    <!-- Product Description -->
                                    <div class="product-description">
                                        <h4 class="product-price">$39.90</h4>
                                        <p>Jeans midi cocktail dress</p>
                                        <!-- Add to Cart -->
                                        <a href="#" class="add-to-cart-btn">ADD TO CART</a>
                                    </div>
                                </div>

                                <!-- Single gallery Item -->
                                <div class="col-12 col-sm-6 col-lg-4 single_gallery_item wow fadeInUpBig" data-wow-delay="0.6s">
                                    <!-- Product Image -->
                                    <div class="product-img">
                                        <img src="img/product-img/product-5.jpg" alt="">
                                        <div class="product-quicview">
                                            <a href="#" data-toggle="modal" data-target="#quickview"><i class="ti-plus"></i></a>
                                        </div>
                                    </div>
                                    <!-- Product Description -->
                                    <div class="product-description">
                                        <h4 class="product-price">$39.90</h4>
                                        <p>Jeans midi cocktail dress</p>
                                        <!-- Add to Cart -->
                                        <a href="#" class="add-to-cart-btn">ADD TO CART</a>
                                    </div>
                                </div>

                                <!-- Single gallery Item -->
                                <div class="col-12 col-sm-6 col-lg-4 single_gallery_item wow fadeInUpBig" data-wow-delay="0.7s">
                                    <!-- Product Image -->
                                    <div class="product-img">
                                        <img src="img/product-img/product-6.jpg" alt="">
                                        <div class="product-quicview">
                                            <a href="#" data-toggle="modal" data-target="#quickview"><i class="ti-plus"></i></a>
                                        </div>
                                    </div>
                                    <!-- Product Description -->
                                    <div class="product-description">
                                        <h4 class="product-price">$39.90</h4>
                                        <p>Jeans midi cocktail dress</p>
                                        <!-- Add to Cart -->
                                        <a href="#" class="add-to-cart-btn">ADD TO CART</a>
                                    </div>
                                </div>

                                <!-- Single gallery Item -->
                                <div class="col-12 col-sm-6 col-lg-4 single_gallery_item wow fadeInUpBig" data-wow-delay="0.8s">
                                    <!-- Product Image -->
                                    <div class="product-img">
                                        <img src="img/product-img/product-7.jpg" alt="">
                                        <div class="product-quicview">
                                            <a href="#" data-toggle="modal" data-target="#quickview"><i class="ti-plus"></i></a>
                                        </div>
                                    </div>
                                    <!-- Product Description -->
                                    <div class="product-description">
                                        <h4 class="product-price">$39.90</h4>
                                        <p>Jeans midi cocktail dress</p>
                                        <!-- Add to Cart -->
                                        <a href="#" class="add-to-cart-btn">ADD TO CART</a>
                                    </div>
                                </div>

                                <!-- Single gallery Item -->
                                <div class="col-12 col-sm-6 col-lg-4 single_gallery_item wow fadeInUpBig" data-wow-delay="0.9s">
                                    <!-- Product Image -->
                                    <div class="product-img">
                                        <img src="img/product-img/product-8.jpg" alt="">
                                        <div class="product-quicview">
                                            <a href="#" data-toggle="modal" data-target="#quickview"><i class="ti-plus"></i></a>
                                        </div>
                                    </div>
                                    <!-- Product Description -->
                                    <div class="product-description">
                                        <h4 class="product-price">$39.90</h4>
                                        <p>Jeans midi cocktail dress</p>
                                        <!-- Add to Cart -->
                                        <a href="#" class="add-to-cart-btn">ADD TO CART</a>
                                    </div>
                                </div>

                                <!-- Single gallery Item -->
                                <div class="col-12 col-sm-6 col-lg-4 single_gallery_item wow fadeInUpBig" data-wow-delay="1s">
                                    <!-- Product Image -->
                                    <div class="product-img">
                                        <img src="img/product-img/product-9.jpg" alt="">
                                        <div class="product-quicview">
                                            <a href="#" data-toggle="modal" data-target="#quickview"><i class="ti-plus"></i></a>
                                        </div>
                                    </div>
                                    <!-- Product Description -->
                                    <div class="product-description">
                                        <h4 class="product-price">$39.90</h4>
                                        <p>Jeans midi cocktail dress</p>
                                        <!-- Add to Cart -->
                                        <a href="#" class="add-to-cart-btn">ADD TO CART</a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="shop_pagination_area wow fadeInUp" data-wow-delay="1.1s">
                            <nav aria-label="Page navigation">
                                <ul class="pagination pagination-sm">
                                    <li class="page-item active"><a class="page-link" href="#">01</a></li>
                                    <li class="page-item"><a class="page-link" href="#">02</a></li>
                                    <li class="page-item"><a class="page-link" href="#">03</a></li>
                                </ul>
                            </nav>
                        </div>

                    </div>
                </div>
            </div>
        </section>

        <!-- ****** New Arrivals Area End ****** -->

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
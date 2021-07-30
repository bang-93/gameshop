<%@ page contentType="text/html; charset=UTF-8"%>
    <!-- Core Style CSS -->
    <link rel="stylesheet" href="/resources/client/css/core-style.css">
    <link rel="stylesheet" href="/resources/client/style.css">

    <!-- Responsive CSS -->
    <link href="/resources/client/css/responsive.css" rel="stylesheet">
<!-- ****** Header Area Start ****** -->
<header class="header_area">
    <!-- Top Header Area Start -->
    <div class="top_header_area">
        <div class="container h-100">
            <div class="row h-100 align-items-center justify-content-end">
                <div class="col-12 col-lg-7">
                    <div class="top_single_area d-flex align-items-center">
                        <!-- ë©ì¸ ë¡ê³  -->
                        <div class="top_logo">
                            <a href="index.html"><img src="/resources/client/img/core-img/banner.png" alt="" width="300" height="100" ></a>
                        </div>
                        <!-- Cart & Menu Area -->
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Top Header Area End -->

    <div class="main_header_area">
        <div class="container h-100">
            <div class="row h-100">
                <div class="col-12 d-md-flex justify-content-between">
                    <!-- Header Social Area -->
                    <div class="header-social-area">
                    </div>
                    <!-- 카테고리 -->
                    <div class="main-menu-area">
                        <nav class="navbar navbar-expand-lg align-items-start">

                            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#karl-navbar" aria-controls="karl-navbar" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"><i class="ti-menu"></i></span></button>

                            <div class="collapse navbar-collapse align-items-start collapse" id="karl-navbar">
                                <ul class="navbar-nav animated" id="nav">
                                    <li class="nav-item dropdown">
                                        <a class="nav-link dropdown-toggle" href="#" id="karlDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">게임 관리</a>
                                        <div class="dropdown-menu" aria-labelledby="karlDropdown">
                                        <!-- 클릭시 각자 맞는 장르의 상품페이지 이동 해야함  -->
                                            <a class="dropdown-item" href="/admin/game/list">게임 조회</a>
                                            <a class="dropdown-item" href="/admin/game/regist">게임 등록</a>
                                        </div>
                                    </li>
                                    <li class="nav-item"><a class="nav-link" href="/admin/member/list">회원 관리</a></li>
                                    <li class="nav-item"><a class="nav-link" href="/admin/board/list">게시판 관리</a></li>
                                    <!--로그인 로그아웃 구현 필요 -->
                                    <li class="nav-item"><a class="nav-link" href="/client/regist">로그아웃</a></li>
                                </ul>
                                </ul>
                            </div>
                        </nav>
                    </div>
                    <!-- Help Line -->
                    <div class="help-line">
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>
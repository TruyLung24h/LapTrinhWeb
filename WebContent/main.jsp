<%@ page language="java" contentType="text/html;harset=UTF-8"
   pageEncoding="UTF-8" import=" java.sql.ResultSet,java.sql.SQLException" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">

<head>
    <title>Title</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css" integrity="sha384-Smlep5jCw/wG7hdkwQ/Z5nLIefveQRIY9nfy6xoR1uRYBtpZgI6339F5dgvm/e9B"
        crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="../../assets/css/style.css">
</head>

<body class="body-main">
    <!-- header -->

    <div class="header container-fluid">

        <nav class="navbar navbar-expand-md ">
            <img src="http://thithu24h.com/images/logo_matra2.png" alt="">
            <button class="navbar-toggler hidden-lg-up" type="button" data-toggle="collapse" data-target="#collapsibleNavId"
                aria-controls="collapsibleNavId" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="collapsibleNavId">
                <ul class="navbar-nav ml-auto mt-2 mt-lg-0">
                    <li class="nav-item active">
                        <a class="nav-link" href="#">GIỚI THIỆU <span class="sr-only">(current)</span></a>
                        <div class="line_item_header"></div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">HỌC PHÍ</a>
                        <div class="line_item_header"></div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">HỖ TRỢ</a>
                        <div class="line_item_header"></div>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="dropdownId" data-toggle="dropdown"
                            aria-haspopup="true" aria-expanded="false">DANH SÁCH ĐỀ THI</a>
                        <div class="line_item_header"></div>
                        <div class="dropdown-menu" aria-labelledby="dropdownId">
                            <a class="dropdown-item" href="#">ĐỀ THI TRUNG HỌC PHỔ THÔNG QUỐC GIA</a>
                            <a class="dropdown-item" href="#">ĐỀ THI GIỮ KỲ</a>
                            <a class="dropdown-item" href="#">ĐỀ THI CUỐI KỲ</a>
                            <a class="dropdown-item" href="#">ĐỀ THI THỬ</a>
                        </div>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="dropdownId" data-toggle="dropdown"
                            aria-haspopup="true" aria-expanded="false">PHÒNG THI</a>
                        <div class="line_item_header"></div>
                        <div class="dropdown-menu" aria-labelledby="dropdownId">
                            <a class="dropdown-item" href="TrangDeThiTheoMon.jsp">TỰ LUYỆN</a>                         
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link px-4 text-uppercase" href="LoadTinTucServlet">Đăng Xuất
                            </a>
                        <div class="line_item_header"></div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link px-4 text-uppercase" href="#" data-toggle="modal" data-target="#modalDangNhap"><p><%=request.getParameter("param1")%></p></a>
                        <div class="line_item_header"></div>
                    </li>

                </ul>


            </div><br />

        </nav>
        <div class="line_parent"></div>


    </div>
    <!-- carousel -->
    <div id="carouselId" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#carouselId" data-slide-to="0" class="active"></li>
            <li data-target="#carouselId" data-slide-to="1"></li>
            <li data-target="#carouselId" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner" role="listbox">
            <div class="carousel-item active">
                <img src="https://spbook.vn/wordpress/wp-content/uploads/2017/12/50.000.png" alt="">
            </div>
            <div class="carousel-item text-center">
                <img src="https://spbook.vn/wordpress/wp-content/uploads/2017/12/50.000.png" alt="">
            </div>
            <div class="carousel-item">
                <img src="https://spbook.vn/wordpress/wp-content/uploads/2017/12/50.000.png" alt="">
            </div>
        </div>
        <a class="carousel-control-prev" href="#carouselId" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselId" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
    <!-- exam -->
    <section class="exam">
        <div class="container">
            <div class="row_text text-center">
                <div class="col-md-12">
                    <p>1 năm giáo dục trực tuyến với <span style="color: #ec7532;">1000 thành viên</span></p>
                </div>

            </div>
            <div class="row row_computer text-center">
                <div class="col-md-2">

                    <i class="fa fa-check-circle"></i>
                    <div class="row">
                        <div class="col-md-3">
                            <h2>1</h2>
                        </div>
                        <div class="col-md-9">
                            <p>Học thử khóa học</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-1"><i class="fa fa-arrow-circle-o-right"></i>

                </div>
                <div class="col-md-2"><i class="fa fa-desktop"></i>
                    <div class="row">
                        <div class="col-md-3">
                            <h2>2</h2>
                        </div>
                        <div class="col-md-9">
                            <p>Học thử miễn phí</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-1"><i class="fa fa-arrow-circle-o-right"></i></div>
                <div class="col-md-2"><i class="fa fa-usd"></i>
                    <div class="row">
                        <div class="col-md-3">
                            <h2>3</h2>
                        </div>
                        <div class="col-md-9">
                            <p>Nộp học phí</p>
                        </div>
                    </div>
                </div>

                <div class="col-md-1"><i class="fa fa-arrow-circle-o-right"></i></div>
                <div class="col-md-2"><i class="fa fa-laptop"></i>
                    <div class="row">
                        <div class="col-md-3">
                            <h2>4</h2>
                        </div>
                        <div class="col-md-9">
                            <p>Vào học</p>
                        </div>
                    </div>
                </div>

            </div>
            <div class="row">
                <div class="col-md-12">
                    <h1 class="section-title">TUYỂN TẬP ĐỀ THI THỬ 2019</h1>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-6 col-md-3 text-center">
                    <div class="movie__item">
                        <img src="https://hocmai.vn/course/images/pen-c-hoa-hoc-2018-2019-1527656742.png" class="img-fluid w-100">
                        <div class="movie__overlay"></div>
                        <div class="movie__detail w-100 text-center text-white">
                            <i class="fa fa-play d-block mx-auto mb-3 video-playvenobox  vbox-item" href="https://youtu.be/aOXvyd9v1cg"
                                data-vbtype="video"></i>
                            <a class="d-block text-white mb-2">READ MORE</a>
                            <span>Released: 7 Mar, 2017</span>
                        </div>
                    </div>
                    <p class="movie__name text-center my-3">Hush</p>
                    <i class="fa fa-star movie__star"></i>
                    <i class="fa fa-star movie__star"></i>
                    <i class="fa fa-star movie__star"></i>
                    <i class="fa fa-star movie__star"></i>
                    <i class="fa fa-star movie__star"></i>
                </div>
                <div class="col-sm-6 col-md-3 text-center">
                    <div class="movie__item">
                        <img src="https://hocmai.vn/course/images/pen-c-vat-li-2018-2019-1527656474.png" class="img-fluid w-100">
                        <div class="movie__overlay"></div>
                        <div class="movie__detail w-100 text-center text-white">
                            <i class="fa fa-play d-block mx-auto video-play mb-3 venobox  vbox-item" href="https://youtu.be/aOXvyd9v1cg"
                                data-vbtype="video"></i>
                            <a class="d-block text-white mb-2">READ MORE</a>
                            <span>Released: 7 Mar, 2017</span>
                        </div>
                    </div>
                    <p class="movie__name text-center my-3">Men of steel</p>
                    <i class="fa fa-star movie__star"></i>
                    <i class="fa fa-star movie__star"></i>
                    <i class="fa fa-star movie__star"></i>
                    <i class="fa fa-star movie__star"></i>
                    <i class="fa fa-star movie__star"></i>
                </div>
                <div class="col-sm-6 col-md-3 text-center">
                    <div class="movie__item">
                        <img src="https://hocmai.vn/course/images/pen-c-toan-2018-2019-1527654598.png" class="img-fluid w-100">
                        <div class="movie__overlay"></div>
                        <div class="movie__detail w-100 text-center text-white">
                            <i class="fa fa-play d-block mx-auto video-play mb-3 venobox  vbox-item" href="https://youtu.be/aOXvyd9v1cg"
                                data-vbtype="video"></i>
                            <a class="d-block text-white mb-2">READ MORE</a>
                            <span>Released: 7 Mar, 2017</span>
                        </div>
                    </div>
                    <p class="movie__name text-center my-3">Đề thi </p>
                    <i class="fa fa-star movie__star"></i>
                    <i class="fa fa-star movie__star"></i>
                    <i class="fa fa-star movie__star"></i>
                    <i class="fa fa-star movie__star"></i>
                    <i class="fa fa-star movie__star"></i>
                </div>
                <div class="col-sm-6 col-md-3 text-center">
                    <div class="movie__item">
                        <img src="https://hocmai.vn/course/images/tieng-viet-4-2018-2019-1534332859.png" class="img-fluid w-100">
                        <div class="movie__overlay"></div>
                        <div class="movie__detail w-100 text-center text-white">
                            <i class="fa fa-play d-block mx-auto mb-3 video-play venobox " href="https://youtu.be/aOXvyd9v1cg"
                                data-vbtype="video"></i>
                            <a class="d-block text-white mb-2">READ MORE</a>
                            <span></span>
                        </div>
                    </div>
                    <p class="movie__name text-center my-3">Iron Man 3</p>
                    <i class="fa fa-star movie__star"></i>
                    <i class="fa fa-star movie__star"></i>
                    <i class="fa fa-star movie__star"></i>
                    <i class="fa fa-star movie__star"></i>
                    <i class="fa fa-star movie__star"></i>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-6 col-md-3 text-center">
                    <div class="movie__item">
                        <img src="https://hocmai.vn/course/images/pen-c-hoa-hoc-2018-2019-1527656742.png" class="img-fluid w-100">
                        <div class="movie__overlay"></div>
                        <div class="movie__detail w-100 text-center text-white">
                            <i class="fa fa-play d-block mx-auto mb-3 video-playvenobox  vbox-item" href="https://youtu.be/aOXvyd9v1cg"
                                data-vbtype="video"></i>
                            <a class="d-block text-white mb-2">READ MORE</a>
                            <span>Released: 7 Mar, 2017</span>
                        </div>
                    </div>
                    <p class="movie__name text-center my-3">Hush</p>
                    <i class="fa fa-star movie__star"></i>
                    <i class="fa fa-star movie__star"></i>
                    <i class="fa fa-star movie__star"></i>
                    <i class="fa fa-star movie__star"></i>
                    <i class="fa fa-star movie__star"></i>
                </div>
                <div class="col-sm-6 col-md-3 text-center">
                    <div class="movie__item">
                        <img src="https://hocmai.vn/course/images/pen-c-vat-li-2018-2019-1527656474.png" class="img-fluid w-100">
                        <div class="movie__overlay"></div>
                        <div class="movie__detail w-100 text-center text-white">
                            <i class="fa fa-play d-block mx-auto video-play mb-3 venobox  vbox-item" href="https://youtu.be/aOXvyd9v1cg"
                                data-vbtype="video"></i>
                            <a class="d-block text-white mb-2">READ MORE</a>
                            <span>Released: 7 Mar, 2017</span>
                        </div>
                    </div>
                    <p class="movie__name text-center my-3">Men of steel</p>
                    <i class="fa fa-star movie__star"></i>
                    <i class="fa fa-star movie__star"></i>
                    <i class="fa fa-star movie__star"></i>
                    <i class="fa fa-star movie__star"></i>
                    <i class="fa fa-star movie__star"></i>
                </div>
                <div class="col-sm-6 col-md-3 text-center">
                    <div class="movie__item">
                        <img src="https://hocmai.vn/course/images/pen-c-toan-2018-2019-1527654598.png" class="img-fluid w-100">
                        <div class="movie__overlay"></div>
                        <div class="movie__detail w-100 text-center text-white">
                            <i class="fa fa-play d-block mx-auto video-play mb-3 venobox  vbox-item" href="https://youtu.be/aOXvyd9v1cg"
                                data-vbtype="video"></i>
                            <a class="d-block text-white mb-2">READ MORE</a>
                            <span>Released: 7 Mar, 2017</span>
                        </div>
                    </div>
                    <p class="movie__name text-center my-3">Đề thi </p>
                    <i class="fa fa-star movie__star"></i>
                    <i class="fa fa-star movie__star"></i>
                    <i class="fa fa-star movie__star"></i>
                    <i class="fa fa-star movie__star"></i>
                    <i class="fa fa-star movie__star"></i>
                </div>
                <div class="col-sm-6 col-md-3 text-center">
                    <div class="movie__item">
                        <img src="https://hocmai.vn/course/images/tieng-viet-4-2018-2019-1534332859.png" class="img-fluid w-100">
                        <div class="movie__overlay"></div>
                        <div class="movie__detail w-100 text-center text-white">
                            <i class="fa fa-play d-block mx-auto mb-3 video-play venobox " href="https://youtu.be/aOXvyd9v1cg"
                                data-vbtype="video"></i>
                            <a class="d-block text-white mb-2">READ MORE</a>
                            <span></span>
                        </div>
                    </div>
                    <p class="movie__name text-center my-3">Iron Man 3</p>
                    <i class="fa fa-star movie__star"></i>
                    <i class="fa fa-star movie__star"></i>
                    <i class="fa fa-star movie__star"></i>
                    <i class="fa fa-star movie__star"></i>
                    <i class="fa fa-star movie__star"></i>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-6 col-md-3 text-center">
                    <div class="movie__item">
                        <img src="https://hocmai.vn/course/images/pen-c-hoa-hoc-2018-2019-1527656742.png" class="img-fluid w-100">
                        <div class="movie__overlay"></div>
                        <div class="movie__detail w-100 text-center text-white">
                            <i class="fa fa-play d-block mx-auto mb-3 video-playvenobox  vbox-item" href="https://youtu.be/aOXvyd9v1cg"
                                data-vbtype="video"></i>
                            <a class="d-block text-white mb-2">READ MORE</a>
                            <span>Released: 7 Mar, 2017</span>
                        </div>
                    </div>
                    <p class="movie__name text-center my-3">Hush</p>
                    <i class="fa fa-star movie__star"></i>
                    <i class="fa fa-star movie__star"></i>
                    <i class="fa fa-star movie__star"></i>
                    <i class="fa fa-star movie__star"></i>
                    <i class="fa fa-star movie__star"></i>
                </div>
                <div class="col-sm-6 col-md-3 text-center">
                    <div class="movie__item">
                        <img src="https://hocmai.vn/course/images/pen-c-vat-li-2018-2019-1527656474.png" class="img-fluid w-100">
                        <div class="movie__overlay"></div>
                        <div class="movie__detail w-100 text-center text-white">
                            <i class="fa fa-play d-block mx-auto video-play mb-3 venobox  vbox-item" href="https://youtu.be/aOXvyd9v1cg"
                                data-vbtype="video"></i>
                            <a class="d-block text-white mb-2">READ MORE</a>
                            <span>Released: 7 Mar, 2017</span>
                        </div>
                    </div>
                    <p class="movie__name text-center my-3">Men of steel</p>
                    <i class="fa fa-star movie__star"></i>
                    <i class="fa fa-star movie__star"></i>
                    <i class="fa fa-star movie__star"></i>
                    <i class="fa fa-star movie__star"></i>
                    <i class="fa fa-star movie__star"></i>
                </div>
                <div class="col-sm-6 col-md-3 text-center">
                    <div class="movie__item">
                        <img src="https://hocmai.vn/course/images/pen-c-toan-2018-2019-1527654598.png" class="img-fluid w-100">
                        <div class="movie__overlay"></div>
                        <div class="movie__detail w-100 text-center text-white">
                            <i class="fa fa-play d-block mx-auto video-play mb-3 venobox  vbox-item" href="https://youtu.be/aOXvyd9v1cg"
                                data-vbtype="video"></i>
                            <a class="d-block text-white mb-2">READ MORE</a>
                            <span>Released: 7 Mar, 2017</span>
                        </div>
                    </div>
                    <p class="movie__name text-center my-3">Đề thi </p>
                    <i class="fa fa-star movie__star"></i>
                    <i class="fa fa-star movie__star"></i>
                    <i class="fa fa-star movie__star"></i>
                    <i class="fa fa-star movie__star"></i>
                    <i class="fa fa-star movie__star"></i>
                </div>
                <div class="col-sm-6 col-md-3 text-center">
                    <div class="movie__item">
                        <img src="https://hocmai.vn/course/images/tieng-viet-4-2018-2019-1534332859.png" class="img-fluid w-100">
                        <div class="movie__overlay"></div>
                        <div class="movie__detail w-100 text-center text-white">
                            <i class="fa fa-play d-block mx-auto mb-3 video-play venobox " href="https://youtu.be/aOXvyd9v1cg"
                                data-vbtype="video"></i>
                            <a class="d-block text-white mb-2">READ MORE</a>
                            <span></span>
                        </div>
                    </div>
                    <p class="movie__name text-center my-3">Iron Man 3</p>
                    <i class="fa fa-star movie__star"></i>
                    <i class="fa fa-star movie__star"></i>
                    <i class="fa fa-star movie__star"></i>
                    <i class="fa fa-star movie__star"></i>
                    <i class="fa fa-star movie__star"></i>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-6 col-md-3 text-center">
                    <div class="movie__item">
                        <img src="https://hocmai.vn/course/images/pen-c-hoa-hoc-2018-2019-1527656742.png" class="img-fluid w-100">
                        <div class="movie__overlay"></div>
                        <div class="movie__detail w-100 text-center text-white">
                            <i class="fa fa-play d-block mx-auto mb-3 video-playvenobox  vbox-item" href="https://youtu.be/aOXvyd9v1cg"
                                data-vbtype="video"></i>
                            <a class="d-block text-white mb-2">READ MORE</a>
                            <span>Released: 7 Mar, 2017</span>
                        </div>
                    </div>
                    <p class="movie__name text-center my-3">Hush</p>
                    <i class="fa fa-star movie__star"></i>
                    <i class="fa fa-star movie__star"></i>
                    <i class="fa fa-star movie__star"></i>
                    <i class="fa fa-star movie__star"></i>
                    <i class="fa fa-star movie__star"></i>
                </div>
                <div class="col-sm-6 col-md-3 text-center">
                    <div class="movie__item">
                        <img src="https://hocmai.vn/course/images/pen-c-vat-li-2018-2019-1527656474.png" class="img-fluid w-100">
                        <div class="movie__overlay"></div>
                        <div class="movie__detail w-100 text-center text-white">
                            <i class="fa fa-play d-block mx-auto video-play mb-3 venobox  vbox-item" href="https://youtu.be/aOXvyd9v1cg"
                                data-vbtype="video"></i>
                            <a class="d-block text-white mb-2">READ MORE</a>
                            <span>Released: 7 Mar, 2017</span>
                        </div>
                    </div>
                    <p class="movie__name text-center my-3">Men of steel</p>
                    <i class="fa fa-star movie__star"></i>
                    <i class="fa fa-star movie__star"></i>
                    <i class="fa fa-star movie__star"></i>
                    <i class="fa fa-star movie__star"></i>
                    <i class="fa fa-star movie__star"></i>
                </div>
                <div class="col-sm-6 col-md-3 text-center">
                    <div class="movie__item">
                        <img src="https://hocmai.vn/course/images/pen-c-toan-2018-2019-1527654598.png" class="img-fluid w-100">
                        <div class="movie__overlay"></div>
                        <div class="movie__detail w-100 text-center text-white">
                            <i class="fa fa-play d-block mx-auto video-play mb-3 venobox  vbox-item" href="https://youtu.be/aOXvyd9v1cg"
                                data-vbtype="video"></i>
                            <a class="d-block text-white mb-2">READ MORE</a>
                            <span>Released: 7 Mar, 2017</span>
                        </div>
                    </div>
                    <p class="movie__name text-center my-3">Đề thi </p>
                    <i class="fa fa-star movie__star"></i>
                    <i class="fa fa-star movie__star"></i>
                    <i class="fa fa-star movie__star"></i>
                    <i class="fa fa-star movie__star"></i>
                    <i class="fa fa-star movie__star"></i>
                </div>
                <div class="col-sm-6 col-md-3 text-center">
                    <div class="movie__item">
                        <img src="https://hocmai.vn/course/images/tieng-viet-4-2018-2019-1534332859.png" class="img-fluid w-100">
                        <div class="movie__overlay"></div>
                        <div class="movie__detail w-100 text-center text-white">
                            <i class="fa fa-play d-block mx-auto mb-3 video-play venobox " href="https://youtu.be/aOXvyd9v1cg"
                                data-vbtype="video"></i>
                            <a class="d-block text-white mb-2">READ MORE</a>
                            <span></span>
                        </div>
                    </div>
                    <p class="movie__name text-center my-3">Iron Man 3</p>
                    <i class="fa fa-star movie__star"></i>
                    <i class="fa fa-star movie__star"></i>
                    <i class="fa fa-star movie__star"></i>
                    <i class="fa fa-star movie__star"></i>
                    <i class="fa fa-star movie__star"></i>
                </div>
            </div>
            <!-- end exam -->

        </div>
    </section>
    <!-- comment -->
    <section class="comment">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div class="line_row_comment">
                        <h3>DIỄN ĐÀN</h3>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="line_row_comment">
                        <h3>LẮNG NGHE & CHIA SẺ</h3>
                    </div>
                </div>

            </div>
            <div class="row ">


                <div class="col-md-6 row_commnet_md">
                    <div class="border_comment">
                        <ul id="clothing-nav" class="nav nav-tabs navbar_comment" role="tablist">

                            <li class="nav-item">
                                <a class="nav-link active" href="#home" id="home-tab" role="tab" data-toggle="tab"
                                    aria-controls="home" aria-expanded="true">Đề thi mới</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" href="#hats" role="tab" id="hats-tab" data-toggle="tab"
                                    aria-controls="hats">Chủ đề mới</a>
                            </li>

                            <!-- Dropdown -->
                            <li class="nav-item">
                                <a class="nav-link" href="#hat" role="tab" id="hats-tab" data-toggle="tab"
                                    aria-controls="hats">Chủ đề mới</a>
                            </li>

                        </ul>

                        <!-- Content Panel -->
                        <div id="clothing-nav-content" class="tab-content">

                            <div role="tabpanel" class="tab-pane fade show active" id="home" aria-labelledby="home-tab">

                                <h3>5 BÀI VIẾT MỚI NHẤT </h3>
                                <P>Đề thi thử tiếng Anh 2019 Chuyên Bắc Ninh</P>
                                <P>Đề thi thử tiếng Anh 2019 Chuyên Bắc Ninh</P>
                                <P>Đề thi thử tiếng Anh 2019 Chuyên Bắc Ninh</P>
                                <P>Đề thi thử tiếng Anh 2019 Chuyên Bắc Ninh</P>
                                <P>Đề thi thử tiếng Anh 2019 Chuyên Bắc Ninh</P>
                                <P>Đề thi thử tiếng Anh 2019 Chuyên Bắc Ninh</P>
                            </div>

                            <div role="tabpanel" class="tab-pane fade" id="hats" aria-labelledby="hats-tab">
                                <p>A hat is a head covering. It can be worn for protection against the elements,
                                    ceremonial
                                    reasons, religious reasons, safety, or as a fashion accessory.</p>
                            </div>

                            <div role="tabpanel" class="tab-pane fade" id="hat" aria-labelledby="hats-tab">
                                <p>A hat is a head covering. It can be worn for protection against the elements,
                                    ceremonial
                                    reasons, religious reasons, safety, or as a fashion accessory.</p>
                            </div>

                        </div>
                    </div>



                </div>

                <div class="col-md-6 row_commnet_md">

                    <div class="border_comment">
                        <div id="carouselId" class="carousel slide" data-ride="carousel">
                            <ol class="carousel-indicators">
                                <li data-target="#carouselId" data-slide-to="0" class="active"></li>
                                <li data-target="#carouselId" data-slide-to="1"></li>
                                <li data-target="#carouselId" data-slide-to="2"></li>
                            </ol>
                            <div class="carousel-inner" role="listbox">
                                <div class="carousel-item active">
                                    <div class="content_carousel">
                                        <div class="row">
                                            <div class="col-md-12 feel_student">
                                                <p>Cảm ơn thầy cô đã giúp e có nhưng cách giải hay thú vị để làm nhanh
                                                    các đề thi thử</p>
                                            </div>

                                        </div>
                                        <div class="row row_image">
                                            <div class="col-md-3 image_col">

                                                <img src="https://media-spiceee.net/uploads/content/image/1284768/large_external_image_.jpg_oh_2d25adacb97b378ef7ea4140c8d5ecfc_oe_5A6ED796"
                                                    alt="">

                                            </div>
                                            <div class="col-md-9">
                                                <span>Nguyễn Thùy Dung</span>
                                                <h6>Tài khoản: Hoconline 24h:<span style="color:blue;">dugkute@gmail.com</span>
                                                </h6>
                                                <h6>Điểm:30 điểm thủ khoa y Thái Bình</h6>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <div class="content_carousel">
                                        <div class="row">
                                            <div class="col-md-12 feel_student">
                                                <p>Cảm ơn thầy cô đã giúp e có nhưng cách giải hay thú vị để làm nhanh
                                                    các đề thi thử</p>
                                            </div>

                                        </div>
                                        <div class="row row_image">
                                            <div class="col-md-3 image_col">

                                                <img src="https://media-spiceee.net/uploads/content/image/1330248/large_r9.jpg"
                                                    alt="">

                                            </div>
                                            <div class="col-md-9">
                                                <span>Trương Lê Diệu My</span>
                                                <h6>Tài khoản: Hoconline 24h:<span style="color:blue;">dieumy@gmail.com</span>
                                                </h6>
                                                <h6>Điểm:30 điểm thủ khoa Đại học Bách Khoa Hà Nội</h6>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <div class="content_carousel">
                                        <div class="row">
                                            <div class="col-md-12 feel_student">
                                                <p>Cảm ơn thầy cô đã giúp e có nhưng cách giải hay thú vị để làm nhanh
                                                    các đề thi thử</p>
                                            </div>

                                        </div>
                                        <div class="row row_image">
                                            <div class="col-md-3 image_col">

                                                <img src="http://kenh14cdn.com/thumb_w/660/2018/9/19/b3-15373479054291433146036.jpg"
                                                    alt="">

                                            </div>
                                            <div class="col-md-9">
                                                <span>Thanh Thúy</span>
                                                <h6>Tài khoản: Hoconline 24h:<span style="color:blue;">thanhthuyxinhgai@gmail.com</span>
                                                </h6>
                                                <h6>Điểm:30 điểm thủ khoa y Hà Nội</h6>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>

                </div>
            </div>

        </div>

    </section>

    <!-- footer -->
    <section class="footer">
        <div class="container_footer">
            <div class="row">
                <div class="col-md-2">
                    <h3>Thi online 24h</h3>
                    <ul>
                        <li>
                            <a href="">Giới thiệu</a>
                        </li>
                        <li><a href="">Đề thi mới nhất</a></li>
                        <li><a href="">Học sinh tiêu biểu</a></li>
                        <li><a href="">Điều khoản chính sách</a></li>
                        <li><a href="">Tiển dụng</a></li>
                    </ul>
                </div>
                <div class="col-md-3">
                    <h3>Dịch vụ</h3>
                    <ul>
                        <li>
                            <a href="">Thư viện</a>
                        </li>
                        <li><a href="">Diễn đàn Thi online 24h</a></li>
                        <li><a href="">Học sinh tiêu biểu</a></li>
                        <li><a href="">Trung tâm tuyển sinh trực tuyến</a></li>

                    </ul>
                </div>
                <div class="col-md-2">
                    <h3>Hỗ trợ khách hàng</h3>
                    <ul>
                        <li><a href="">Trung tâm hỗ trợ</a></li>
                        <li><a href="">Email:thionline24h@gmail.com</a></li>
                        <li><a href="">Đường dây nóng:1900811233</a></li>
                    </ul>
                </div>
                <div class="col-md-3">
                    <h3>DÀNH CHO ĐỐI TÁC</h3>
                </div>
                <divh class="col-md-2">
                    <h3>TẢI ÚNG DỤNG </h3>
                    <li><a href="">
                            <img src="https://hocmai.vn/theme/new2/images/footer-google-app.png" alt="">
                        </a></li>
                    <li>
                        <a href=""><img src="https://hocmai.vn/theme/new2/images/footer-store-app.png" alt=""></a>
                    </li>
                    <li><a href="">
                            <img src="https://hocmai.vn/theme/new2/images/congthuong.png" alt="">
                        </a></li>
                </divh>
            </div>
        </div>

    </section>
    <!-- Modal -->

    <div class="modal fade" id="modalDangKy" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Register</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label>Tài Khoản: </label>
                        <input type="text" class="form-control" id="TaiKhoan" placeholder="Nhập tài khoản">
                        <span class="sp-thongbao"></span>
                    </div>
                    <div class="form-group">
                        <label>Mật Khẩu: </label>
                        <input type="password" class="form-control" id="MatKhau" placeholder="Nhập mật khẩu">
                        <span class="sp-thongbao"></span>
                    </div>
                    <div class="form-group">
                        <label>Email: </label>
                        <input type="email" id="Email" class="form-control" placeholder="Nhập email">
                        <span class="sp-thongbao"></span>
                    </div>
                    <div class="form-group">
                        <select class="form-control" id="GioiTinh">
                            <option>Chọn Giới Tính</option>
                            <option>Nam</option>
                            <option>Nữ</option>

                        </select>
                        <span class="sp-thongbao"></span>
                    </div>
                    <div class="form-group">
                        <label>Ngày Sinh: </label>
                        <!-- <input type="text" class="form-control" id="NgaySinh"> -->
                        <input type="text" class="form-control" id="NgaySinh" placeholder="Nhập ngày sinh">
                        <span class="sp-thongbao"></span>
                    </div>
                    <div class="form-group">
                        <label>Địa chỉ: </label>
                        <input type="text" class="form-control" id="DiaChi" placeholder="Địa chỉ...">
                        <span class="sp-thongbao"></span>
                    </div>
                    <div class="form-group">
                        <label>Mã ID: </label>
                        <input type="number" class="form-control" id="MaID" placeholder="Nhập mã id">
                        <span class="sp-thongbao"></span>
                    </div>
                    <div class="form-group">
                        <label>Ảnh: </label>
                        <input type="text" class="form-control" id="Anh" placeholder="Cập nhật ảnh đại diện">
                        <span class="sp-thongbao"></span>
                    </div>
                </div>
                <div class="modal-footer justify-content-center">
                    <button type="button" class="btn btn-orange btn-success rounded btn_save">Đăng Ký</button>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="modalDangNhap" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Register</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label>Tài Khoản: </label>
                        <input type="text" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Mật Khẩu: </label>
                        <input type="password" class="form-control">
                    </div>

                </div>
                <div class="modal-footer justify-content-center">
                    <button type="button" class="btn btn-orange btn-success rounded btn_save">Đăng Nhập</button>
                </div>
            </div>
        </div>
    </div>
    <script>
        $(function () {
            $('[data-toggle="tooltip"]').tooltip()
        })

        // Initialize popover component
        $(function () {
            $('[data-toggle="popover"]').popover()
        })
    </script>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/js/bootstrap.min.js" integrity="sha384-o+RDsa0aLu++PJvFqy8fFScvbHFLtbvScb8AjopnFD+iEQ7wo/CG0xlczd+2O/em"
        crossorigin="anonymous"></script>


    <script src="../models/nguoidung.js"></script>
    <script src="../models/danhsachnguoidung.js"></script>
    <script src="../controller/main.js"></script>
</body>

</html>
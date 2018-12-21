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
        <link rel="stylesheet" href="style.css">
         <link rel="stylesheet" href="<%=request.getContextPath()%> ">
     
</head>

<body>



    <div class="header ">
        <nav class="navbar navbar-expand-md navbar-light bg-light">
            <div class="container">

                <img src="http://thithu24h.com/images/logo_matra2.png" alt="">
                <button class="navbar-toggler hidden-lg-up" type="button" data-toggle="collapse" data-target="#collapsibleNavId"
                    aria-controls="collapsibleNavId" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="collapsibleNavId">
                    <ul class="navbar-nav ml-auto mt-2 mt-lg-0">
                        <li class="nav-item active">
                            <a class="nav-link" href="login.jsp">Đăng nhập <span class="sr-only">(current)</span></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Đăng ký</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Quên mật khẩu</a>
                        </li>
                    </ul>
                    <form class="form-inline my-2 my-lg-0">
                        <input class="form-control mr-sm-2" type="text" placeholder="Khóa học cần tìm">
                        <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Tìm kiếm</button>
                    </form>
                </div>
            </div>
        </nav>
        <!-- menu choose subjects -->
        <div class="menu_subjects  w-100">

            <nav class="navbar navbar-expand-sm text-center d-flex">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href="#">Toán học</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Vật lý</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Hóa học</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Sinh học</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Địa lý</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Lịch sử</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Giáo dục công dân</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Tiếng anh</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Ngữ văn</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">IQ Test</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Tin học</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Funy Test</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Giao thông</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Tất cả đề thi</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Toán tiếng anh</a>
                    </li>

                </ul>


            </nav>


        </div>

    </div>


    
    <div class="content">
    
     		<br />
	     		<br />
		     		<div >  
			     		<table class="table">
		                    <thead>
		                             <th> Tin Tức </th>	                                    
		                    </thead>
	                    </table>
		     		</div>
	     		<br />
	            <div class="row f1" >     
		            <div class="col-md-4" >
		                <img src="http://thithu24h.com/media/articles/2018_09/photo-0-15378485494341775930303.jpg" alt="logo thi THPT Quốc Gia năm 2019" style="width:85%;height:32%;">
		                <h3 class="t1">Thi THPT Quốc Gia năm 2019:"Đề thi không phục vụ mục tiêu "2 trong 1".</h3>
		                <p class="cnt1">Bộ trưởng bộ GD&ĐT Phùng Xuân Nhạ cho biết trong năm tới đề thi không phục mục tiêu kì thi "2 trong 1" mà phục vụ đánh giá thực chất chất lượng dạy và... </p>
		            </div>  
		            	<div class="col-md-8 " >
		                	<ul>                              
				     			<c:forEach items="${list}" var="list" >	     			     			     		
										<tr>																	
										<li><a href="TinTucServlet?idNews=${list.idNews}">${list.tieuDe}</a></li>	 
										</tr>
								</c:forEach>  
							</ul>
						</div>                          
	            </div>
            <br />
    
    </div>
    
    
<div class="container">
    
</div>
  
<div class="line"></div>
<!-- footer -->
<div class="footer">
    <div class="container">
        <div class="row">
                <div class="col-md-3">
                        <li><a href="">Thi thử trược tuyến Toán học</a></li>
                        <li><a href="">thi thử trực tuyến Địa Lý</a></li>
                        <li><a href="">thi thử trực tuyến Ngữ Văn</a></li>
                        <li><a href="">Thi thử trực tuyến Giao thông</a></li>
                        <li><a href="">Đề thi thử Lớp 6</a></li>
                        <li><a href="">Đề thi thử Lớp 10</a></li>
                        <li><a href="">Đề thi thử Thi cao học</a></li>
                        <li><a href="">Đề thi thử Thi oto</a></li>
            
                    </div>
                    <div class="col-md-3">
                        <li><a href="">Thi thử trực tuyến Vật lý</a></li>
                        <li><a href="">Thi thử trực tuyến Lịch sử </a></li>
                        <li><a href="">Thi thử trực tuyến IQ Test</a></li>
                        <li><a href="">Đề thi thi thử Lớp 3</a></li>
                        <li><a href="">Đề thi thi thử Lớp 7</a></li>
                        <li><a href="">Đề thi thi thử Lớp 11</a></li>
                        <li><a href="">Đề thi thi thử Level 1</a></li>
                        <li><a href="">Đề thi thi thử Thi xe máy</a></li>
                      
                    </div>
                    <div class="col-md-3">
                        <li><a href="">Thi thử trực tuyến Hóa Học </a></li>
                        <li><a href="">Thi thử trực tuyến Giáo dục công dân</a></li>
                        <li><a href="">Đề thi thử trực tuyến tin học</a></li>
                        <li><a href="">Đề thi thi thử Lớp 4</a></li>
                        <li><a href="">Đề thi thi thử Lớp 8</a></li>
                        <li><a href="">Đề thi thi thử lớp 12</a></li>
                        <li><a href="">Đề thi thi thử Level 2</a></li>
                        <li><a href="">Đề thi thi thử Đại cương</a></li>
                    </div>
                    <div class="col-md-3">
                        <li><a href="">Thi thử trực tuyến Sinh học</a></li>
                        <li><a href="">Thi thử trực tuyến Tiếng anh</a></li>
                        <li><a href="">Thi thử trực tuyến Funy Test</a></li>
                        <li><a href="">Đề thi thi thử Lớp 5</a></li>
                        <li><a href="">Đề thi thi thử lớp 9</a></li>
                        <li><a href="">Đề thi thi thử THPT Quốc gia</a></li>
                        <li><a href="">Đề thi thi thử Level 3</a></li>
                        <li><a href="">Đề thi thi thử Văn phòng</a></li>
                    </div>
        </div>
       
    </div>
</div>
<!-- footer buttom -->
<div class="footer_buttom">
    <div class="container">
        <div class="row">
            <div class="col-md-4">
              <p style="font-weight:600;" >Công cụ thi trực tuyến - ThiThu24h</span>
             <p>	Copyright © 2018. All rights reserved. Phát triển bởi </p>
            </div>
            <div class="col-md-8 d-flex">
                <li><a href="">Liên hệ hỗ trợ</a></li>
                <li><a href="">Quy định chung</a></li>
                <li><a href="">Chính sách bảo mật</a></li>
                <li><a href="">Hướng dẫ sử dụng</a></li>
                <li><a href="">Tin tức tuyển sinh</a></li>
            </div>
        </div>
    </div>
</div>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/js/bootstrap.min.js" integrity="sha384-o+RDsa0aLu++PJvFqy8fFScvbHFLtbvScb8AjopnFD+iEQ7wo/CG0xlczd+2O/em"
        crossorigin="anonymous"></script>
</body>

</html>
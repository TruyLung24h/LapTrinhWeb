<%@ page language="java" contentType="text/html;harset=UTF-8"
   pageEncoding="UTF-8" import=" java.sql.ResultSet,java.sql.SQLException" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Cổng thi thử THPT Quốc Gia, thi thử trực tuyến miễn phí</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="style_css2.css" type="text/css">
    <link rel="stylesheet" href="style_css.css" type="text/css">
</head>
<body>
    
        <div class="row header">
                <div class="col-md-1 menuheader menuheader1 "><a href="LoadTinTucServlet">Trang chủ</a></div>              
                <div class="col-md-2 menuheader"><a href="http://">Tuyển sinh</a></div>
                <div class="col-md-2 menuheader"><a href="http://">hướng dẫn sử dụng</a></div>
                <div class="col-md-1 menuheader"><a href="http://">Liên hệ </a></div>
                
        </div>
    
    <div class="container">
        <div class="row" >
            <div class="col-md-5 row_Img_cnt1"><img src="http://thithu24h.com/images/logo_matra2.png" alt="Logo thi thử 24h" style="width:50%;height:70px;"></div>
            <div class="col-md-2"><a href="#" class="row_cnt1">Tìm kiếm</a></div>
            <div class="col-md-2"><a href="login.jsp" class="row_cnt1" >Đăng nhập</a></div>
            <div class="col-md-2"><a href="#" class="row_cnt1">Quên mật khẩu?</a></div>
            <div class="col-md-1"><a href="#" class="row_cnt1">Đăng kí</a></div>
        </div>
        <!-- Nội dung tin tức nè -->
        <div class="row f1"style="border:1px solid Aqua;" >
           	  <c:forEach items="${list}" var="TinTuc" >	
           <h3 style="text-align:center;">${TinTuc.tieuDe}</h3>
           <pre>${TinTuc.noiDung} </pre>
    	</c:forEach>  	
                       </div>
    </div>
    <!-- footer nè -->
    
        <div class="row footer" >
            <p class="p1">
                <span>
                    <strong> Công cụ thi thử trực tuyến - ThiThhu24h </strong><br>
                    
				    Copyright © 2018. All rights reserved. Phát triển bởi <a href="">VinaGon</a>
                
                </span>
                <span class="p2">
                    <a href="">- Liên hệ hỗ trợ</a>
                    <a href="">- Quy định chung</a>
                    <a href="">- Chính sách bảo mật</a>
                    <a href="">- Hướng dẫn sử dụng</a>
                    <a href="">- Tin tức trực tuyến</a>
                </span>

            </p>
        </div>
    
</body>
</html>
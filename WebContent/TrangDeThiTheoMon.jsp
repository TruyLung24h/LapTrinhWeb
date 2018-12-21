<%@ page language="java" contentType="text/html;harset=UTF-8"
   pageEncoding="UTF-8" import=" java.sql.ResultSet,java.sql.SQLException" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Đăng nhập</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="style_css2.css" type="text/css">
</head>
<body>
    
        <div class="row header">
                <div class="col-md-1 menuheader menuheader1 "><a href="LoadTinTucServlet">Trang chủ</a></div>                      
            	<div class="col-md-1 menuheader">Đăng kí</a></div>
                <div class="col-md-1 menuheader"><a href="http://">Liên hệ </a></div>
                <div class="col-md-2 menuheader"><a href="http://">Hướng dẫn sử dụng</a></div>
                
        </div>
    
    <div class="container">
        <div class="row" >
            <div class="col-md-5 row_Img_cnt1"><img src="http://thithu24h.com/images/logo_matra2.png" alt="Logo thi thử 24h" style="width:50%;height:70px;"></div>
            
        </div>
        <div class="row header ">         
            <div class="col-md-2 f6"><a href="">Thành viên</a></div>

        </div>
        <div class="row f5">
                <h3 style="text-align:center;">ĐỀ THI THỬ TRỰC TUYẾN </h3>
                <div class="row f5" style="text-align:center;">
                    <div class="col-md-12">
                        <!-- Môn Toán -->
                            <div class="row" >
                                <div class="col-md-10 "><h3 class="t1" >DANH SÁCH ĐỀ THI </h3></div>
                                <div class="col-md-2 f5" ><button class="btn1"></button></div>
                                
                            </div>
                            <hr>
                        <!-- bẮT ĐẦU LOAD ĐỀ THI (MỖI DÒNG CÓ 3 ĐỀ ) -->
                            <div class="row f6" style="margin-top:10px;">
                                <div class="col-md-3 s1" style="height:250px;margin-left:7%;">
                                            <div class="box" style="margin-left:-15px;text-align:center;width:112%;"><a href="#" class="link">Mã đề thi #235</a></div>
                                                <div class="boy">
                                                    
                                                    <p class="t2"><a href="#">Đề thi môn Toán lớp 8(Đề 4)</a></p>
                                                    <p >
                                                        <span class="span1">13 lượt thi</span>
                                                        <span class="span1">266 lượt xem</span><br>
                                                    </p>
                                                    <p >
                                                    20 câu hỏi,25 phút
                                                    </p>
                                                       
                                                        <a href="TrangLamBai.jsp" style="margin-top:20px;"> VÀO THI </a>
                                                    
                                                </div>
                                            
                                 </div>
                                 <div class="col-md-3 s1" style="height:250px;margin-left:5%;">
                                            <div class="box" style="margin-left:-15px;text-align:center;width:112%;"><a href="#" class="link">Mã đề thi #235</a></div>
                                                <div class="boy">
                                                    
                                                    <p class="t2"><a href="#">Đề thi môn Toán lớp 8(Đề 4)</a></p>
                                                    <p >
                                                        <span class="span1">13 lượt thi</span>
                                                        <span class="span1">266 lượt xem</span><br>
                                                    </p>
                                                    <p >
                                                    20 câu hỏi,25 phút
                                                    </p>
                                                        
                                                      <a href="TrangLamBai.jsp" style="margin-top:20px;"> VÀO THI </a>
                                                    
                                                </div>
                                            
                                 </div>
                                 <div class="col-md-3 s1" style="height:250px;margin-left:5%;">
                                            <div class="box" style="margin-left:-15px;text-align:center;width:112%;"><a href="#" class="link">Mã đề thi #235</a></div>
                                                <div class="boy">
                                                    
                                                    <p class="t2"><a href="#">Đề thi môn Toán lớp 8(Đề 4)</a></p>
                                                    <p >
                                                        <span class="span1">13 lượt thi</span>
                                                        <span class="span1">266 lượt xem</span><br>
                                                    </p>
                                                    <p >
                                                    20 câu hỏi,25 phút
                                                    </p>                                                      
                                                        <a href="TrangLamBai.jsp" style="margin-top:20px;"> VÀO THI </a>
                                                    
                                                </div>
                                            
                                 </div>
                            </div>
                    <!-- KẾT THÚC LOAD ĐỀ THI -->
                    </div> 
                     
                </div>
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

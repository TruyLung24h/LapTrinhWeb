<%@ page language="java" contentType="text/html;harset=UTF-8"
   pageEncoding="UTF-8" import=" java.sql.ResultSet,java.sql.SQLException" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page import="connectToDatabase.connectToDatabase"%>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.util.Random"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.PreparedStatement"%>
<html>
<head>
    <title>Bài Thi</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="style_css.css" type="text/css">
	<%
	String mins = request.getParameter( "mins" );
	if( mins == null ) mins = "30";
	  
	String secs = request.getParameter( "secs" );
	if( secs == null ) secs = "1";
	%>
<script>
<!--
	var mins = <%=mins%>; 
	var secs = <%=secs%>; 
	function timer()
	{
			
			if( --secs == -1 )
			{
				secs = 59;
				--mins;
			}
		 
		
		if( secs < 10 ) secs = "0" + secs;             
		if( mins < 10 ) mins = "0" + parseInt( mins, 10 );
	
		document.forma.mins.value = mins; 
		document.forma.secs.value = secs;
		 
	
		if( secs == 0 && mins == 0 ) // time over
		{
			document.forma.ok.disabled = true;
			document.formb.results.style.display = "block";
		}
		else 
		{
			window.setTimeout( "timer()", 1000 );
			
		}
	}
//-->
</script>
</head>
<body>
    
        <div class="row header">
                <div class="col-md-1 menuheader menuheader1 "><a href="LoadTinTucServlet">Trang chủ</a></div>             
        </div>
    
    <div class="container">
        <div class="row" >
            <div class="col-md-5 row_Img_cnt1"><img src="http://thithu24h.com/images/logo_matra2.png" alt="Logo thi thử 24h" style="width:50%;height:70px;"></div>
           
        </div>
        <div class="row f5" style='border:1px solid red;'>
                <!-- Phần load đề thi lên -->
                <div class="col-md-12">
                  		  <%
                          
	                            connectToDatabase conn= new connectToDatabase();
	                            Statement s=conn.connect().createStatement();							
								String sql = "SELECT * FROM CauHoi ORDER BY rand() LIMIT 20" ;								
								ResultSet rec = s.executeQuery(sql);
								
							%>
					<form action="<%=request.getRequestURL()%>" name="forma">
							Thời Gian Làm Bài: <input type="text" name="mins" size="1" style="border:0px solid black;text-align:right">:<input type="text" name="secs" size="1" style="border:0px solid black">
					</form >			
                    <FORM >
	                    
                        <div style="text-align:center;">
                            <h3>LÀM BÀI THI</h3>
                            <label for="">Tên bài thi :</label>
                            <label for="">Toán</label><br>
                            <label for="">Thời gian:</label>
                            <label for="">30'</label><br>
                        </div>
                        <!-- kết thúc  -->
                         <%   
							String idCauhoi;
                            String DapAn;
							int i = 1;
                            int j=0;
                            String[]  idinput ;
                            idinput=  new String[1000];
                         while((rec!=null) && (rec.next())&& i<6) {                     	                     	
						        i++;
                         %>
                         <%                         
							int i2 = 1;													
                         while((rec!=null) && (rec.next())&& i2<2) {
                        	
						        i2++;  
						        j++;
						        idinput[j]=rec.getString("idCauHoi");
                         %>
                         <form  >
	                        <div style="background-color:Aqua;">  	                                           
	                            <label for="" style="color:red;"><%=rec.getString("cauHoi")%></label><br><br>
	                            <input type="radio" name="<%=rec.getString("idCauHoi")%>" value="<%=rec.getString("dapAn1")%>"><%=rec.getString("dapAn1")%><br><br>
	                            <input type="radio" name="<%=rec.getString("idCauHoi")%>" value="<%=rec.getString("dapAn2")%>"><%=rec.getString("dapAn2")%><br><br>
	                            <input type="radio" name="<%=rec.getString("idCauHoi")%>" value="<%=rec.getString("dapAn3")%>"><%=rec.getString("dapAn3")%><br><br>
	                            <input type="radio" name="<%=rec.getString("idCauHoi")%>" value="<%=rec.getString("dapAn4")%>"><%=rec.getString("dapAn4")%><br><br>	                           	                            
	                        </div>
                              <div class="form-group">        
								  
							  </div>
                        </form>
                        
                         <% 
                         } 
                         j++;
	              		 idinput[j]=rec.getString("idCauHoi"); 
                         %>                     
                        <div style="background-color:white;">
                            <label for="" style="color:red;"><%=rec.getString("cauHoi")%></label><br><br>
                            <input type="radio" name="<%=rec.getString("idCauHoi")%>" value="<%=rec.getString("dapAn1")%>"><%=rec.getString("dapAn1")%><br><br>
                            <input type="radio" name="<%=rec.getString("idCauHoi")%>" value="<%=rec.getString("dapAn2")%>"><%=rec.getString("dapAn2")%><br><br>
                            <input type="radio" name="<%=rec.getString("idCauHoi")%>" value="<%=rec.getString("dapAn3")%>"><%=rec.getString("dapAn3")%><br><br>
                            <input type="radio" name="<%=rec.getString("idCauHoi")%>" value="<%=rec.getString("dapAn4")%>"><%=rec.getString("dapAn4")%><br><br>
                        
                        </div>
                        <hr>    
                        <td>
								                
					   </td>   
					            
                        <%
                       				
                  		  }
                        %>
                        <button id="btn1">Nộp Bài</button>
	                        </div>
                    </FORM>
                </div>
				 <script>		 
		            document.getElementById("btn1").onclick = function ()
		            {
		            	for(var m=0;m<10;m++)
		            	{		            		
		            		idCauhoi=idinput[m] ;
			                var checkbox = document.getElementsByName(idinput[m]);		               
			                for (var i = 0; i < checkbox.length; i++)
			                {
			                    if (checkbox[i].checked === true)
			                    {
			                    	 checkbox[i].value;			                        
			                    }
			                }
		            	}
		            };
		 
		        </script>
        </div>
        <hr>
        <!-- Phân trước footer -->
        <div class="row f1">
            <div class="col-md-3">
                <ul>
                    <li><a href="">Thi thử trực tuyến Toán học</a></li>
                    <li><a href="">Thi thử trực tuyến địa lý </a></li>
                    <li><a href="">Thi thử trực tuyến ngữ văn</a></li>
                    <li><a href="">Thi thử trực tuyến Giao thông</a></li>
                    <li><a href="">Đề thi thử lớp 9</a></li>
                    <li><a href="">Đề thi thử THPT Quốc Gia</a></li>
                    <li><a href="">Đề thi thử Đại cương</a></li>

                </ul>
            </div>
            <div class="col-md-3"> <ul>
                    <li><a href="">Thi thử trực tuyến Vật lý</a></li>
                    <li><a href="">Thi thử trực tuyến lịch sử </a></li>
                    <li><a href="">Thi thử trực tuyến IQ Test</a></li>
                    <li><a href="">Đề thi thử lớp 3</a></li>
                    <li><a href="">Đề thi thử lớp 6</a></li>
                    <li><a href="">Đề thi thử lớp 10</a></li>
                    <li><a href="">Đề thi thử thi cao học</a></li>
                    <li><a href="">Đề thi thử level 3</a></li>
                    <li><a href="">Đề thi thử Văn học</a></li>
                </ul></div>
            <div class="col-md-3">
            <ul>
                    <li><a href="">Thi thử trực tuyến hóa học</a></li>
                    <li><a href="">Thi thử trực tuyến Giáo dục công dân </a></li>
                    <li><a href="">Thi thử trực tuyến Tin học</a></li>
                    <li><a href="">Đề thi thử lớp 4</a></li>
                    <li><a href="">Đề thi thử lớp 7</a></li>
                    <li><a href="">Đề thi thử lớp 11</a></li>
                    <li><a href="">Đề thi thử level 1</a></li>
                    <li><a href="">Đề thi thử thi oto</a></li>
                </ul>
            </div>
            <div class="col-md-3">
            <ul>
                    <li><a href="">Thi thử trực tuyến Sinh  học</a></li>
                    <li><a href="">Thi thử trực tuyến Tiếng anh </a></li>
                    <li><a href="">Thi thử trực tuyến Funny Test</a></li>
                    <li><a href="">Đề thi thử lớp 5</a></li>
                    <li><a href="">Đề thi thử lớp 8</a></li>
                    <li><a href="">Đề thi thử lớp 12</a></li>
                    <li><a href="">Đề thi thử level 2</a></li>
                    <li><a href="">Đề thi thử Thi xe máy</a></li>
                </ul>
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
<script>
<!--
timer(); // call timer() after page is loaded
//-->
</script>  
</body>
</html>

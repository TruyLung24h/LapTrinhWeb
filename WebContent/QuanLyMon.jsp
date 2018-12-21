<%@ page language="java" contentType="text/html;harset=UTF-8"
   pageEncoding="UTF-8" import=" java.sql.ResultSet,java.sql.SQLException" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page import="servlet.XoaTaiKhoanServlet"%>
<%@page import="java.util.List"%>
<%@ page import="connectToDatabase.connectToDatabase"%>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
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
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%> ">
</head>

<body>

    <nav class="navbar navbar-expand-md navbar-light navbar_manage">
        <img src="http://thithu24h.com/images/logo_matra2.png" alt="">
        <button class="navbar-toggler hidden-lg-up" type="button" data-toggle="collapse" data-target="#collapsibleNavId"
            aria-controls="collapsibleNavId" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="collapsibleNavId">
            <ul class="navbar-nav ml-auto mt-2 mt-lg-0">


            </ul>
            
        </div>
    </nav>
    <div class="admin">
        <div class="col-md-3 col-mg-2 sidebar">
            <form>          

                <ul class="nav pratent parent" role="tablist">
                    <li class="nav-item parent_member w-100">
                        <a class="nav-link" href="admin.jsp" >Danh sách người dùng</a>
                    </li>
                    <li class="nav-item parent_member w-100">
                        <a class="nav-link" href="QuanLyMon.jsp">Danh sách lớp học</a>
                    </li> 
                     <li class="nav-item parent_member w-100">
                        <a class="nav-link" href="QuanLyCauHoi.jsp" >Quản Lý Câu Hỏi</a>
                    </li>
                    <li class="nav-item parent_member w-100">
                        <a class="nav-link" href="TaoDeThi.jsp" >Quản Lý Đề Thi</a>
                    </li>                   
                </ul><br />
                <div class="line_out"></div>
                <li class="nav-item parent_member w-100">
                    <a class="nav-link" href="LoadTinTucServlet">Đăng xuất</a>
                </li>
            </form>
        </div>
    </div>

    <!-- main -->
    <div class="col-ms-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main w-75">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header text-center">Trang chủ quản trị</h1>
            </div>
        </div>
        <!--/.row-->
        <div class="row w-100">
            <div class="col-md-12">

                <div class="container-fluid">


                    <!-- Tab panes -->
                    <div class="tab-content">                  
                        <div >
							<%
								String keyword = "";
								if(request.getParameter("txtKeyword") != null) {
									keyword = request.getParameter("txtKeyword");
								}
							%>
							<div class="input-group">
							<form name="frmSearch" method="get" action="QuanLyMon.jsp"  >							  
							    <tr>							      
							      <input name="txtKeyword" type="text" id="txtKeyword" value="<%=keyword%>"  class="form-control" id="txtSearch" placeholder="Search for...">
							      <input type="submit" value="Search" id="btnSearchByAccount" class="btn btn-success">
							    </tr>							  
							</form>
                            </div>
                            
                            <div class="clear-fix"></div>
                            <br />
                            <button data-toggle="modal" data-target="#ThemMonHoc" id="btnMonHoc" class="btn btn-success">
                                Thêm Lớp Học 
                                <i class="fa fa-plus"></i>
                            </button>
                            <div class="clear-fix"></div>
                            <br />
                           
                             <%                         							
								String sql = "SELECT * FROM  MonHoc WHERE TenMonHoc like '%" +  keyword + "%' " +
								" ORDER BY TenMonHoc ASC";	
	                            connectToDatabase conn= new connectToDatabase();
	                            Statement s=conn.connect().createStatement();		
								ResultSet rec = s.executeQuery(sql);
							%>							
                            <div class="tblMonHoc" id="tblMonHoc">
                                <table class="table">
                                    <thead>
                                        <th>Mã Môn</th>
                                        <th>Tên Môn</th>                                                                        
                                    </thead>
                                    <tbody id="tblDanhSachMonHoc">
                                   <ul>
									
										<%while((rec!=null) && (rec.next())) { 
											String editURL = "DanhSachLopServlet?idMonHoc=" + rec.getString("idMonHoc"); 
											String deleteURL = "XoaMonHocServlet?idMonHoc=" + rec.getString("idMonHoc"); 
											String timURL = "TimMonHocServlet?idMonHoc=" + rec.getString("idMonHoc"); 
											
										%>
										  <tr>										 
										    <td><%=rec.getString("idMonHoc")%></td>
										    <td><%=rec.getString("tenMonHoc")%></td>									   
										    <td>
								               <button class="form-control"> <a href="<%=timURL%>">Sửa</a></button>
								             </td> 
								             </td>
							           	     <td>
								                <button class="form-control" > <a href="<%=deleteURL%>">Xóa</a></button>
								             </td> 
								             <td>
								              <button class="form-control"> <a href="<%=editURL%>">Danh Sách Lớp </a></button>
								             </td> 						    
										  </tr>
								       	<%}
								       	%>
							        </ul> 
                                    </tbody>
                                </table>
                            </div>
                            <br />

                        </div>
                        <!-- Kết thúc danh sách khóa học -->
                        
                 
                    <!--KetThuc Tabmenu-->

                   <!----------------------->
                   <div class="modal fade" id="SuaMonHoc">
                        <div class="modal-dialog">
                            <div class="modal-content">

                                <!-- Modal Header -->
                                <div class="modal-header">
                                    <h4 class="modal-title">Modal Heading</h4>
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                </div>
                                    
                                <!-- Modal body -->
                                 <form class="form-horizontal" action ="UpdateMonHocServlet" >
                                 <div class="modal-body">
                                    <div class="form-group">
                                        <label>Mã Lớp </label>
                                    
                                        <input type="text" name ="idMonHoc" class="form-control"  placeholder="Nhập vào id lớp học">
                                    </div>
                                    
                                    <div class="form-group">
                                        <label>Tên Lớp</label>
                                        <input type="text" name ="tenMonHoc" class="form-control" placeholder="Nhập vào tên lớp học" >
                                    </div>                                 
                                    <div class="form-group">        
								        <button type="submit" class="form-group">Lưu Thay Đổi</button>
								    </div>
								  
                                </div>
                                </form>
                                <!-- Modal footer -->
                                <div class="modal-footer">

                                </div>

                            </div>
                        </div>
                    </div>
                </div>
                     <div class="modal fade" id="ThemMonHoc">
                        <div class="modal-dialog">
                            <div class="modal-content">

                                <!-- Modal Header -->
                                <div class="modal-header">
                                    <h4 class="modal-title">Modal Heading</h4>
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                </div>
                                    
                                <!-- Modal body -->
                                 <form class="form-horizontal" action ="InsertMonHocServlet" >
                                 <div class="modal-body">
                                    <div class="form-group">
                                        <label>Mã Lớp </label>
                                    
                                        <input type="text" name ="idMonHoc" class="form-control"  placeholder="Nhập vào id lớp hoc">
                                    </div>
                                    
                                    <div class="form-group">
                                        <label>Tên Lớp</label>
                                        <input type="text" name ="tenMonHoc" class="form-control" placeholder="Nhập vào tên lớp học" >
                                    </div>                                 
                                    <div class="form-group">        
								        <button type="submit" class="form-group">Thêm </button>
								    </div>
								  
                                </div>
                                </form>
                                <!-- Modal footer -->
                                <div class="modal-footer">

                                </div>

                            </div>
                        </div>
                    </div>
                </div>               
                <!--DEMO GẮN HEADER VÀO INDEX.HTML-->
                <div id="header">

                </div>
            </div>
        </div>
    </div>

    <!-- sidebar -->

  
    

    <script>
        
        $(function () {
            $('[data-toggle="tooltip"]').tooltip()
        })

   
        $(function () {
            $('[data-toggle="popover"]').popover()
        })
    </script>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/js/bootstrap.min.js" integrity="sha384-o+RDsa0aLu++PJvFqy8fFScvbHFLtbvScb8AjopnFD+iEQ7wo/CG0xlczd+2O/em"
        crossorigin="anonymous"></script>
</body>

</html>
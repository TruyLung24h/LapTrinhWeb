<%@ page language="java" contentType="text/html;charset=UTF-8"
   pageEncoding="UTF-8" import=" java.sql.ResultSet,java.sql.SQLException" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page import="model.selectADmin"%>
<%@page import="dao.ADminDAO"%>
<%@page import="servlet.XoaTaiKhoanServlet"%>
<%@page import="java.util.List"%>
<%@page import="model.TaiKhoan"%>
<%@page import="dao.TaiKhoanDAO"%>
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
                        <a class="nav-link" href="#DanhSachNguoiDung" role="tab" data-toggle="tab">Danh sách người dùng</a>
                    </li>
                    <li class="nav-item parent_member w-100">
                        <a class="nav-link" href="QuanLyMon.jsp" >Danh sách lớp</a>
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
                    
                        <!--Danh sách người dùng -->
                        <div role="tabpanel" class="tab-pane  in active" id="DanhSachNguoiDung">
                        
  							<%
								String keyword = "";
								if(request.getParameter("txtKeyword") != null) {
									keyword = request.getParameter("txtKeyword");
								}
							%>
                            <div class="input-group">
							<form name="frmSearch" method="get" action="admin.jsp"  >							  
							    <tr>							      
							      <input name="txtKeyword" type="text" id="txtKeyword" value="<%=keyword%>"  class="form-control" id="txtSearch" placeholder="Search for...">
							      <input type="submit" value="Search" id="btnSearchByAccount" class="btn btn-success">
							    </tr>							  
							</form>
                            </div>
                            
                            <div class="clear-fix"></div>
                            <br />
                            <button data-toggle="modal" data-target="#myModal" id="btnThemNguoiDung" class="btn btn-success">
                                Thêm người dùng
                                <i class="fa fa-plus"></i>
                            </button>
                            <div class="clear-fix"></div>
                            <br />
                           
                            <%
                          
	                            connectToDatabase conn= new connectToDatabase();
	                            Statement s=conn.connect().createStatement();							
								String sql = "SELECT * FROM  TaiKhoan, TypeAccount WHERE TaiKhoan.IdType = TypeAccount.IdType and Username like '%" +  keyword + "%' " +
								" ORDER BY username ASC";		
								ResultSet rec = s.executeQuery(sql);
								
							%>
								
                            <div class="tblNguoiDung" id="tblNguoiDung">
                                <table class="table">
                                    <thead>
                                        <th>Tài khoản</th>
                                        <th>Mật khẩu</th>
                                        <th>Họ tên</th>
                                        <th>Giới Tính</th>
                                        <th>Loại Tài Khoản </th>
                                        <th>Ngày Sinh</th>
                                        <th>Địa Chỉ</th>
                                        
                                    </thead>
                                    <tbody id="tblDanhSachNguoiDung">
                                   <ul>
									
										<%while((rec!=null) && (rec.next())) { String deleteURL = "XoaTaiKhoanServlet?username=" + rec.getString("username");
										 String editURL = "TimTaiKhoanServlet?username=" + rec.getString("username"); 
										%>
										  <tr>										 
										    <td><%=rec.getString("username")%></td>
										    <td><%=rec.getString("p_assword")%></td>
										    <td><%=rec.getString("hoTen")%></td>
										    <td><%=rec.getString("gioiTinh")%></td>
										    <td><%=rec.getString("tenType")%></td>
										    <td><%=rec.getString("ngaySinh")%></td>
										    <td><%=rec.getString("diaChi")%></td>	
										    <td>
								               <button class="form-control">  <a href="<%=editURL%>">Sửa</a></button> 
								            </td> 
							           	    <td>
								              <button class="form-control">   <a href="<%=deleteURL%>">Xóa</a></button> 
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
                        <!-- Kết thúc danh sách người dùng -->
                        
                        
                        
                        
                        
                       
                        
                        
                      
                    <!--KetThuc Tabmenu-->

                  
                  <div class="modal fade" id="SuaTaiKhoan">
                        <div class="modal-dialog">
                            <div class="modal-content">

                                <!-- Modal Header -->
                                <div class="modal-header">
                                    <h4 class="modal-title">Modal Heading</h4>
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                </div>
                                    
                                <!-- Modal body -->
                                 <form class="form-horizontal" action ="UpdateTaiKhoanServlet" >
                                 <div class="modal-body">
                                    <div class="form-group">
                                        <label>Tài khoản</label>
                                    
                                        <input type="text" name ="username" class="form-control" value="<%=request.getParameter("param1")%>" placeholder="Nhập vào tài khoản">
                                    </div>
                                    
                                    <div class="form-group">
                                        <label>Mật khẩu</label>
                                        <input type="text" name ="p_assword" class="form-control" placeholder="Nhập vào mật khẩu" type="password">
                                    </div>
                                    <div class="form-group">
                                        <label>Họ tên</label>
                                        <input type="text" name ="hoTen"  class="form-control" placeholder="Nhập vào họ tên">
                                    </div>
                                    <div class="form-group">
                                        <label>GioiTinh</label>
                                        <input type="text" name ="gioiTinh"  class="form-control" placeholder="Nhập vào Giới Tính">
                                    </div>
                                    <div class="form-group">
                                        <label>NgaySinh</label>
                                        <input type="text" name ="ngaySinh"  class="form-control" placeholder="Nhập vào Ngày Sinh">
                                    </div>
                                    <div class="form-group">
                                        <label>DiaChi</label>
                                        <input type="text" name ="diaChi"  class="form-control" placeholder="Nhập vào Địa Chí">
                                    </div>
                                    
                                    <div class="form-group">
                                        <label for="">Loại Người Dùng: </label>
                                        <select class="form-control" type="text" name ="idType" >
                                            <option value="1">Giáo Vụ</option>
                                            <option value="2">Học Viên</option>
                                        </select>
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
                   <!----------------------->
                    <!-- The Modal -->
                    <div class="modal fade" id="myModal">
                        <div class="modal-dialog">
                            <div class="modal-content">

                                <!-- Modal Header -->
                                <div class="modal-header">
                                    <h4 class="modal-title">Modal Heading</h4>
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                </div>
                                    
                                <!-- Modal body -->
                                 <form class="form-horizontal" action="InsertServlet" method="post">
                                 <div class="modal-body">
                                    <div class="form-group">
                                        <label>Tài khoản</label>
                                        <input type="text" name ="username" class="form-control" placeholder="Nhập vào tài khoản">
                                        
                                    </div>
                                    
                                    <div class="form-group">
                                        <label>Mật khẩu</label>
                                        <input type="text" name ="p_assword" class="form-control" placeholder="Nhập vào mật khẩu" type="password">
                                    </div>
                                    <div class="form-group">
                                        <label>Họ tên</label>
                                        <input type="text" name ="hoTen"  class="form-control" placeholder="Nhập vào họ tên">
                                    </div>
                                    <div class="form-group">
                                        <label>GioiTinh</label>
                                        <input type="text" name ="gioiTinh"  class="form-control" placeholder="Nhập vào Giới Tính">
                                    </div>
                                    <div class="form-group">
                                        <label>NgaySinh</label>
                                        <input type="text" name ="ngaySinh"  class="form-control" placeholder="Nhập vào Ngày Sinh">
                                    </div>
                                    <div class="form-group">
                                        <label>DiaChi</label>
                                        <input type="text" name ="diaChi"  class="form-control" placeholder="Nhập vào Địa Chí">
                                    </div>
                                    
                                    <div class="form-group">
                                        <label for="">Loại Người Dùng: </label>
                                        <select class="form-control"  name ="idType" >
                                            <option value="1">Giáo Vụ</option>
                                            <option value="2">Học Viên</option>
                                        </select>
                                    </div>
                                    <div class="form-group">        
								        <button type="submit" class="form-group">Thêm</button>
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
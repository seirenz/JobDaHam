<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
    <head>
       <%@ include file="/admin/include/head.jsp" %>
    </head>
    <body class="sb-nav-fixed">
     <%@ include file="/admin/include/nav.jsp" %>
       
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4">Tables</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
                            <li class="breadcrumb-item active">Tables</li>
                        </ol>
                        
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table mr-1"></i>
                                                         헤드헌터 회원
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                 <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                        <thead>
                                            <tr align="center" valign="middle">
	                                        <td colspan ='7'  align=center>회원리스트</td>
	                                        <td colspan ='1' align=right >회원수 : ${count }</td>
                                            </tr>
                                            <tr align="center" valign="middle">
                                            <td align="center">번호</td>
	                                        <td align="center">기업아이디</td>
	                                        <td align="center">비밀번호</td>
	                                        <td align="center">기업명</td>
	                                        <td align="center">담당자명</td>
	                                        <td align="center">연락처</td>
	                                        <td align="center">이메일</td>
	                                        <td align="center">등록일</td>
                                            </tr>
                                        </thead>
                                        <tfoot>
                                    
                                         <tr align="right"><td colspan="8"><a href="../head/headHunterRegist.head" >회원등록</a></td></tr>

                                        </tfoot>
                                     
                                        <tbody>
                                      
                                     
                        <c:forEach var="dto" items="${headhunterList }" >
                        <tr align="center" valign="middle">
                            <td align="center">${dto.headNum }</td>
	                        <td align="center"><a href ="headInfo.ad?headId=${dto.headId }"> ${dto.headId}</a> </td>
	                        <td align="center">${dto.headPw }</td>
		                    <td align="center">${dto.headName }</td>
		                    <td align="center">${dto.hmanagerName }</td>
	                        <td align="center">${dto.headTel }</td>
	                        <td align="center">${dto.headEmail }</td>
	                        <td align="center"><fmt:formatDate value="${dto.headRegist }" type="date" pattern="yyyy-MM-dd"/></td>
	                    </tr>
	                    </c:forEach>
	                       
                                        </tbody>
                                     </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Copyright &copy; Your Website 2020</div>
                            <div>
                                <a href="#">Privacy Policy</a>
                                &middot;
                                <a href="#">Terms &amp; Conditions</a>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.5.1.min.js" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="../admin/js/scripts.js"></script>
        <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js" crossorigin="anonymous"></script>
        <script src="../admin/assets/demo/datatables-demo.js"></script>
    </body>
</html>

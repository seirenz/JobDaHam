
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">
    <head>
    <script type="text/javascript" 
	src="http://code.jquery.com/jquery-latest.js" ></script>
    <script type="text/javascript">
$(function(){
	$("#modify").click(function(){
		if($("#pw").val()==""){
			alert("비밀번호 입력하세요");
			$("#pw").focus();
			return false;
		}
		$("#frm").submit();
	});
	
});
</script>
       <%@ include file="/admin/include/head.jsp" %>
    </head>
    <body class="sb-nav-fixed">
     <%@ include file="/admin/include/nav.jsp" %>
       
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4">회원정보</h1>
                        
                        
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table mr-1"></i>
                                                                 기업회원 
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                <form action="" method="post" name="frm" >
                                 <table   class="table table-bordered" id="dataTable" style="width:500px; text-align:center; margin: auto;" cellspacing="0">
                                       
                                        <tfoot>
                                    
                                         <tr align="right"><td colspan="2"><a href="companyList.ad" >비밀번호변경</a> &emsp;<a href="companyList.ad" >목록으로</a></td></tr>

                                        </tfoot>
                                     
                                        <tbody>
                                               
                                             <tr align="center" valign="middle">
	                                        <td style="width:30%;" align=center>등록번호  </td>
	                                        <td style="width:70%;" align=right >${dto.compNum }  </td>
                                            </tr>
                                           <tr align="center" valign="middle">
	                                        <td style="width:30%;" align=center>기업이름  </td>
	                                        <td style="width:70%;" align=right >${dto.compName } </td>
                                            </tr>
                                             
                                               <tr align="center" valign="middle">
	                                        <td style="width:30%;" align=center>대표자 </td>
	                                        <td style="width:70%;" align=right ><input type="text" id="repregent" name ="repregent" value="${dto.repregent }" /> </td>
                                            </tr>
                                             
                                               <tr align="center" valign="middle">
	                                        <td style="width:30%;" align=center>사업자등록번호 </td>
	                                        <td style="width:70%;" align=right >${dto.bNum } </td>
                                            </tr>
                                             
                                               <tr align="center" valign="middle">
	                                        <td style="width:30%;" align=center>기업유형 </td>
	                                        <td style="width:70%;" align=right ><input type="text" id="compType" name ="compType" value="${dto.compType }" /> </td>
                                            </tr>
                                               <tr align="center" valign="middle">
	                                        <td style="width:30%;" align=center>주소  </td>
	                                        <td style="width:70%;" align=right ><input type="text" id="compAddr" name ="compAddr" value="${dto.compAddr} " /></td>
                                            </tr>
                                               <tr align="center" valign="middle">
	                                        <td style="width:30%;" align=center>인사담당자  </td>
	                                        <td style="width:70%;" align=right ><input type="text" id="cmanagerName" name ="cmanagerName" value="${dto.cmanagerName }" /> </td>
                                            </tr>
                                               <tr align="center" valign="middle">
	                                        <td style="width:30%;" align=center>아이디  </td>
	                                        <td style="width:70%;" align=right >${dto.compId }</td>
                                            </tr>
                                               <tr align="center" valign="middle">
	                                        <td style="width:30%;" align=center>비번  </td>
	                                        <td id="pw" style="width:70%;" align=right ><input type="password" id="pw" name ="compPw" value="" /> </td>
                                            </tr>
                                               <tr align="center" valign="middle">
	                                        <td style="width:30%;" align=center>전화 </td>
	                                        <td style="width:70%;" align=right ><input type="text" id="compTel" name ="compTel" value="${dto.compTel }" /> </td>
                                            </tr>
                                             <tr align="center" valign="middle">
	                                        <td style="width:30%;" align=center>이메일 </td>
	                                        <td style="width:70%;" align=right ><input type="text" id="compEmail" name ="compEmail" value="${dto.compEmail }" /> </td>
                                            </tr>
                                               <tr align="center" valign="middle">
	                                        <td style="width:30%;" align=center>등록일시 </td>
	                                        <td style="width:70%;" align=right >${dto.compRegist } </td>
                                            </tr>
                                               <tr align="center" valign="middle">
	                                        <td style="width:30%;" align=center>마케팅 동의</td>
	                                        <td style="width:70%;" align=right >상태: ${dto.marketing } &emsp; 동의<input type="radio" id="marketing" name ="marketing" value="동의" /> 
	                                                                                                   &nbsp;비동의<input type="radio" id="marketing" name ="marketing" value="비동의" />  
	                                       </td>
                                            </tr>
                                               <tr align="center" valign="middle">
	                                        <td style="width:30%;" align=center>정보이용 동의</td>
	                                        <td style="width:70%;" align=right >상태: ${dto.infoAgree } &emsp; 동의<input type="radio" id="infoAgree" name ="infoAgree" value="동의" /> 
	                                                                                                   &nbsp;비동의<input type="radio" id="infoAgree" name ="infoAgree" value="비동의" /> 
	                                       </td>
                                            </tr>
                                               <tr align="center" valign="middle">
	                                        <td style="width:30%;" align=center>업무위탁 동의</td>
	                                        <td style="width:70%;" align=right >상태: ${dto.workRequest } &emsp; 동의<input type="radio" id="workRequest" name ="workRequest" value="동의" /> 
	                                                                                                     &nbsp;비동의<input type="radio" id="workRequest" name ="workRequest" value="비동의" /> 
	                                       </td>
                                            </tr>
                                              <tr align="center" valign="middle">
	                                       
	                                        <td colspan="2" style="width:70%;" align=center >
	                                            <input type="button" name="modify" id ="modify" value="수   정" >
                                               <input type="button" value="취  소" onclick = "javascript:history.back();" />
                                               <input type="button" value="삭제" id ="memDel"/>
                                             </td>
                                            </tr> 
                                        </tbody>
                                     </table>
                                     </form>
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


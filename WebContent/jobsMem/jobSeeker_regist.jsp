<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>개인회원 회원가입</title>
 <style type='text/css'>
	#memberTab{width:630px; margin: 0 auto;}
  #agree{height: 30px; width: 81%;}

   .pw{width: 250px; height:50px;font-size: large;text-align: left;}
   .pw input#compass{font-size: large;}
   #subtns{width: 100px; height: 30px;}


  </style>
 <script src="https://code.jquery.com/jquery-1.8.1.min.js"></script>
  <script language="JavaScript">


    function ps(){
    if (this.frm.compass.type="password")
    box.innerHTML="<input id='compass' name='compass' placeholder='비밀번호*' style='width:175px; height:50px;' type='html' name='compass' size='20' value="+this.frm.compass.value+">";
    click.innerHTML="<a href='javascript:txt()''><input type='button' value='숨기기' ></a>"}
    function txt(){
    if (this.frm.compass.type="text")
    box.innerHTML="<input id='compass' name='compass' placeholder='비밀번호*' style='width:190px; height:50px;' type='password' name='compass' size='20' value="+this.frm.compass.value+">";
    click.innerHTML="<a href='javascript:ps()'><input type='button' value='보기'></a>"}
   
  
      $( document ).ready( function() {
        $( '.check-all' ).click( function() {
          $( '.ab' ).prop( 'checked', this.checked );
        } );
      } );

    
   
  </script>

</head>
<body>


 <form method='post' action='memberOk.html' name ='frm' >
	<div id='memberTab' >
	 <div style="margin:20px;">
	 <table border='1'  width = '600px' align = 'center' >
     <tr>
     <td style=" width:200px; height:50px;font-size: large;text-align: center;"><a href="jobSeekerRegist.mem"  >개인회원</a></td> 
     <td style=" width:200px; height:50px;font-size: large;text-align: center;"><a href="companyRegist.mem" >기업회원</a></td>
     <td style=" width:200px; height:50px;font-size: large;text-align: center;"><a href="headHunterRegist.mem" >헤드헌터회원</a></td>
     </tr>
   </table>
	</div>
	
 <fieldset>
  <legend style="font-size: x-large;">잡다함 개인 회원 가입</legend>
  
  
  <table border = '1' width = '595px' align = 'center'>
  <p><caption style="text-align: left; font-size: x-large;"> <b>기본정보</b></caption></p>
  <p><caption style="text-align: right; font-size: small;"> <b>*는 필수사항입니다</b></caption></p>

 
<tbody>

  <tr>
    <td ><input type='text' name='comName' id = 'comName' class = 'comName' maxlength ='20'  style=" width:370px; height:50px;font-size: large;text-align: left;"  placeholder="기업명*" required></td>
     <td><input type="text" name='comOwnner' id = 'comOwnner' class = 'comOwnner' maxlength ='20'  style=" width:215px; height:50px;font-size: large;text-align: left;"  placeholder="대표자*" required></td>
  </tr>
  
  <tr>
    <td colspan="2"><input placeholder="사업자번호*" type='number'  maxlength ='20'  style=" width:600px; height:50px;font-size: large;text-align: left;" name='userAddr' id = 'userAddr' ></td>
  </tr>
 
  <tr>
    <td colspan="2"> <select name='sel2'  style=" width:607px; height:50px;font-size: large;text-align: left;">
        
      <option selected >기업구분선택</option>
        
        <optgroup label='국내'>
            <option >대기업</option>
            <option>대기업(계열사/자회사)</option>
            <option>중견기업(300명 이상)</option>
            <option>중소기업(300명 이상</option>
            <option>벤처기업</option>
            <option>공공기관/공기업</option>
            <option>비영리단체/협회/교육기관</option>
          </optgroup>
          <optgroup></optgroup>
      
          <optgroup label="외국계">
            <option>외국계-투자기업</option>
            <option>외국계-법인기업</option>
            <option>외국계-기관/비영리기구/단체</option>
          </optgroup>
         </select>
		</td>
   
  </tr>
  <tr>
    <td colspan="2"><input placeholder="회사 주소*" type='text' name='userAddr' id = 'userAddr' style=" width:600px; height:50px;font-size: large;text-align: left;" ></td>
  </tr>
  
</tbody>

</table>

<table border = '1' width = '595px' align = 'center'>
  <p ><caption style="padding-bottom: 20px; text-align: left; font-size: x-large;"> <b>인사담당자 정보</b></caption></p>
 
  <tbody>
 
  <tr>
    <td colspan="2"><input placeholder="가입자명*" type='text' maxlength ='20'  style=" width:600px; height:50px;font-size: large;text-align: left;" name='userAddr' id = 'userAddr' ></td>
  </tr>
  
  <tr>
    <td ><input type='text' name='comName' id = 'comName' class = 'comName' maxlength ='20'  style=" width:343px; height:50px;font-size: large;text-align: left;"  placeholder="아이디*" required></td>
     <td class= "pw"><span id=box><input type="password" name='compass' id = 'compass' class = 'compass' maxlength ='20'  placeholder="비밀번호*" style="width:190px; height:50px;" required></span>
      <span id=click><a href="javascript:ps()"><input type="button" value="보기"></a></span>
        </td>
  </tr>

  <tr>
    <td  colspan="2"><input  placeholder= '전화번호*' type='tel' name='comPhon' id = 'comPhon' maxlength = '20'style=" width:600px; height:50px;font-size: large;text-align: left;"></td>
  </tr>

  <tr>
    <td colspan="2"><input placeholder= '이메일*' type='email' name='userEmail' id = 'userEmail' style=" width:600px; height:50px;font-size: large;text-align: left;"></td>
  </tr>

</tbody>


</table>
<p>인사업무에 바로 활용가능한 정보와 이벤트 메일 수신에 동의합니다. <input type="checkbox" value="agree"></p> 

<p>필수항목 및 개인정보 수집 및 이용 동의(선택),<br>업무위탁동의(선택)에 모두 동의합니다. <input type="checkbox" name="all" class="check-all" style="margin-left: 213px ;"> </p>
<hr>
<table  width = '595px' align = 'center'>
  <tbody>
  <tr><td id="agree"><span style="color: red;">[필수] 이용약관 동의</span></td><td><input type="checkbox" name="cb1" class="ab" required></td></tr>
  <tr><td id="agree"><span style="color: red;">[필수] 개인정보 수집 및 이용 동의</td><td><input type="checkbox" name="cb2" class="ab" required></td></tr>
  <tr><td id="agree"><span style="color: gray;">[선택] 개인정보 수집 및 이용 동의</span></td><td><input type="checkbox" name="cb3" class="ab"></td></tr>
  <tr><td id="agree"><span style="color: gray;">[선택] 업무위탁</span></td><td><input type="checkbox" name="cb4" class="ab"></td></tr>
</tbody>
<tfoot>
  <tr>
    <th colspan="2"><input id='subtns'type='submit' value='가입완료'/> <input id='subtns' type='reset' value = '다시입력'/> <input id='subtns' type='button' value = '가입안함' /></th>

  </tr>
</tfoot>
</table>

 </form>
 </fieldset>
 
</div>
 



</body>
</html>
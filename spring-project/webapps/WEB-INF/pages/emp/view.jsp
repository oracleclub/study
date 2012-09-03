<%@ page language="java" isELIgnored="false" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="ko">
<head>
<meta http-equiv="Content-type" content="text/html; charset=UTF-8">

<script type="text/javascript" language="JavaScript">
	function showMessage(msg){
	    if(msg != ''){
	        alert(msg); 
	    }   
	}

	function insertForm(){
		location.href="/emp/form";
	}
	    
    function listAct(){
        location.href="/emp/list";
    }
</script>
</head>
<body >

<form name="form" method="post" action="/emp/form">
<h2> 사원정보 상세 화면 </h2>
  <table width="280" border="0">
    <tr>
        <td align="left"> empno : </td>
        <td>${emp.empno}</td>
    </tr>            
    <tr>
        <td align="left"> ename : </td>
        <td>${emp.ename}</td>
    </tr>
    <tr>
        <td align="left"> job : </td>
        <td>${emp.job}</td>
    </tr>
    <tr>
        <td align="left"> sal : </td>
        <td>${emp.sal}</td>
    </tr>
    <tr>
        <td align="left"> deptno : </td>
        <td>${emp.deptno}</td>
    </tr>
    <tr height="10"><td></td></tr>
    <tr>
        <td align="center" colspan="2">
            <input type="button" value="등록" onclick="insertForm()" /> 
            <input type="button" value="목록" onclick="listAct()" />
        </td>
    </tr>
  </table>
  
</form>
</body>
</html>
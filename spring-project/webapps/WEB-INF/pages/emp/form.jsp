<%@ page language="java" isELIgnored="false" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="ko">
<head>
<meta http-equiv="Content-type" content="text/html; charset=UTF-8">
<style>
.error {
    color: #ff0000;
}
.errorblock{
    color: #000;
    background-color: #ffEEEE;
    border: 3px solid #ff0000;
    padding:8px;
    margin:16px;
}
</style>
<script type="text/javascript" language="JavaScript">
	function showMessage(msg){
	    if(msg != ''){
	        alert(msg); 
	    }   
	}

    function insertAct(){    
        var f = document.form;        
        if (!!f.empno.value && !!f.ename.value && !!f.job.value) {
            f.action = "/emp/register";
            f.submit();            
        }else {
            alert("input value");
        }
    }

    function listAct(){
        location.href="/emp/list";
    }
</script>
</head>
<body >

<form:form commandName="emp" name="form" method="post">
<h2> 사원정보 등록 화면 </h2>
  <table width="280" border="0">
    <tr>
        <td align="left"> empno : </td>
        <td>
            <input type="text" id="empno" name="empno" value="${emp.empno}" maxlength="20" size="20"/>
            <br><form:errors path="empno" cssClass="error" />
        </td>
    </tr>            
    <tr>
        <td align="left"> ename : </td>
        <td>
            <input type="text" id="ename" name="ename" value="${emp.ename}" maxlength="20" size="20"/>
            <br><form:errors path="ename" cssClass="error" />
        </td>
    </tr>
    <tr>
        <td align="left"> job : </td>
        <td><input type="text" id="job" name="job" value="${emp.job}" maxlength="20" size="20"/></td>
    </tr>
    <tr>
        <td align="left"> sal : </td>
        <td>
            <input type="text" id="sal" name="sal" value="${emp.sal}" maxlength="20" size="20"/>
            <br><form:errors path="sal" cssClass="error" />
        </td>
    </tr>
    <tr>
        <td align="left"> deptno : </td>
        <td>
            <select name="deptno">
                <option value="10" <c:if test="${emp.deptno == 10}">selected</c:if>>10</option>
                <option value="20" <c:if test="${emp.deptno == 20}">selected</c:if>>20</option>
                <option value="30" <c:if test="${emp.deptno == 30}">selected</c:if>>30</option>
            </select>
        </td>
    </tr>
    <tr height="10"><td></td></tr>
    <tr>
        <td align="center" colspan="2">
            <input type="submit" value="저장" /> 
            <input type="button" value="취소" onclick="listAct()"/>
        </td>
    </tr>
  </table>
  
</form:form>
</body>
</html>
<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

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

    function runRegisterForm(){        
        location.href = "/emp/form";        
    }

    function runDelete(){
        if(isChecked(document.getElementsByName("empno"))){
            if(confirm('정말 삭제하시겠습니까?')){
                 document.form.action = '/emp/remove';
                 document.form.submit();
            }else{              
                return;
            }           
        }else{
            alert('삭제할 사원을 선택해 주세요!');
        }
    }

    function isChecked(chkbox){
        var flag = false;
        for(var i=0 ; i<chkbox.length ; i++){
            if(chkbox[i].checked){
                flag = true;
                break;
            }   
        }
        return flag;
    }
    
</script>
</head>
<body onload="showMessage('${msg}');">
<form name="sform" method="post" action="/emp/list">
    <table width="50%" border="0">
        <tr>
            <td width="100%" align="right">
                <input type="button" value="등록" onclick="runRegisterForm();"/>
                <input type="button" value="삭제" onclick="runDelete();"/>
            </td>
        </tr>
    </table>
</form>
<form name="form" method="post" action="">
    <table width="50%" border="1">
        <tr>
            <th>선택</th>
            <th>empno</th>
            <th>ename</th>
            <th>job</th>
            <th>sal</th>
            <th>mgr</th>
            <th>deptno</th>            
        </tr>
        <c:forEach var="emp" items="${empList}" varStatus="c">
            <tr  > 
                <td><input type="radio" name="empno" value="${emp.empno}" /></td>
                <td>${emp.empno}</td>
                <td><a href="/emp/view.ok?empno=${emp.empno}">${emp.ename}</a></td>
                <td>${emp.job}</td>
                <td><fmt:formatNumber value="${emp.sal}" type="number" /></td>
                <td>${emp.mgr}</td>
                <td>${emp.deptno}</td>                
            </tr>
        </c:forEach>
    </table>
</form>
</body>
</html>
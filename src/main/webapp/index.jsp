<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>人才信息列表</h1>

<form action="${pageContext.request.contextPath}/enterprisetalentList"> 部门名称：
    <select name="departmentId">
        <option value="1">工程部</option>
        <option value="2">信息部</option>
        <option value="3">制造部</option>
        <option value="4">销售部</option>
        <option value="5">公关部</option>
    </select>
    <input type="submit" value="查询">
    <a href="${pageContext.request.contextPath}/toadd">新增人员</a>
    <table border="1px">
        <tr>
            <td>人才编号</td>
            <td>人才姓名</td>
            <td>工作年限</td>
            <td>所属部门</td>
            <td>毕业学校</td>
            <td>操作</td>
        </tr>
        <c:forEach items="${enterprisetalentList}" var="enterprisetalent">
            <tr>
                <td>${enterprisetalent.id}</td>
                <td>${enterprisetalent.name}</td>
                <td>${enterprisetalent.workingLife}</td>
                <td>${enterprisetalent.department.name}</td>
                <td>${enterprisetalent.graduateSchool}</td>
                <input type="hidden" name="id" value="${enterprisetalent.id}">
                <td><a href="/delete/${enterprisetalent.id}">删除</a> <a href="/toModify/${enterprisetalent.id}">更新</a></td>
            </tr>
        </c:forEach>
    </table>
</form>
</body>
</html>

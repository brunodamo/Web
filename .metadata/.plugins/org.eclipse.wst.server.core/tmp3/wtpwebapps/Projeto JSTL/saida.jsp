<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Info de: </title>
</head>
<body>

<div style="float: right;">Usu�rio :${usuario}</div>

<table border="1">
	<c:forEach var="pessoa" items="${lista}" varStatus="idLista">
		<tr bgcolor="#${idLista.count % 2 == 0 ? 'ccccc' : 'ffffff'}	">
			<td>${idLista.count}</td><td>${pessoa.nome}</td><td>${pessoa.idade}</td><td>${pessoa.sexo}</td>
		</tr>	
	</c:forEach>
</table>

<c:url value="index.jsp" var="link"></c:url>

<a href="${link}">INDEX</a>

<%-- 	<p>Idade: ${pessoa.idade}</p> --%>
<%-- 	<p>Sexo: ${pessoa.sexo}</p> --%>

</body>
</html>
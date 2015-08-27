<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="br.com.fiap.beans.Pessoa"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Resultado</title>
</head>
<body>

<%
	Pessoa p = (Pessoa)session.getAttribute("pessoa");
// 	Pessoa p = (Pessoa)request.getAttribute("pessoa");
	
 %>
 
 <p>Nome: <%=p.getNome() %></p>
 <p>Idade: <%=p.getIdade() %></p>
 <p>Sexo: <%=p.getSexo()%></p>
	
<%-- 	<p>Nome: <%=request.getParameter("nome") %></p> --%>
<%-- 	<p>Idade:<%=request.getParameter("idade") %></p> --%>
<%-- 	<p>Sexo:<%=request.getParameter("sexo") %></p> --%>

</body>
</html>
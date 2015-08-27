<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="cabecalho.jsp"%>
<%@ page import="br.com.fiap.beans.Pessoa"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>	


<!-- <form action="resultado.jsp" method="get"> -->
<!-- <fieldset> -->
<!-- 	<legend>Informçaões Pessoais</legend> -->
<!-- 		Nome: <input type="text" name="nome"/><br/> -->
<!-- 		Idade: <input type="text" name="idade"/><br/> -->
<!-- 		Sexo: <input type="text" name="sexo"/><br/> -->
<!-- 		<input type="submit" value="Processar"/><br/> -->
<!-- </fieldset> -->
<!-- </form> -->



<% 
	Pessoa p = new Pessoa();
		
	p.setNome("Jony");
	p.setIdade(27);
	p.setSexo("Masculino");
		
	session.setMaxInactiveInterval(10);
	session.setAttribute("pessoa", p);

// 	request.setAttribute("pessoa", p);
// 	request.getRequestDispatcher("resultado.jsp").forward(request, response);
	
%>
	<p><a href="resultado.jsp">RESULTADO</a>
 
<%--  <p>Nome:<%=p.getNome()%></p> --%>
<%--  <p>Idade:<%=p.getIdade() %></p> --%>
<%--  <p>Sexo:<%=p.getSexo() %></p> --%>



</body>
</html>
<%-- 
    Document   : index
    Created on : 31 de ago de 2020, 15:32:46
    Author     : rlarg
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Index - JSP</title>
    </head>
    <body>
        <h1>Java Server Pages</h1>
        <h2>Index</h2>
        <h3><a href="date-with-scriptlet.jsp">Data/hora do servidor com scriptlet</a></h3>
        <h3><a href="date-with-expression.jsp">Data/hora do servidor com expressão</a></h3>
        <h3><a href="date-with-scriptlet_and_expression.jsp">Data/hora do servidor com scriptlet e expressão</a></h3>
        <h3><a href="minha-idade.jsp">Minha idade</a></h3>
        <h3><a href="numeros-aleatorios.jsp">Números aleatórios</a></h3>
        <h3><a href="numeros-aleatorios-parametrizado.jsp">Números aleatórios parametrizado</a></h3>
        <h3><a href="tabuada.jsp">Tabuada</a></h3>
        <%@include file="WEB-INF/jspf/rodape.jspf" %>
    </body>
</html>

<%-- 
    Document   : minha-idade
    Created on : 31 de ago de 2020, 16:16:49
    Author     : rlarg
--%>

<%@page import="java.util.Calendar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Números aleatórios - JSP</title>
    </head>
    <body>
        <h3><a href="index.jsp">Voltar</a></h3>
        <h1>Java Server Pages</h1>
        <h2>Números aleatórios</h2>
        <%for(int i = 1; i<=10; i++){%>
            <div><%= ((int)(Math.random() * 100)) %></div>
        <%}%>
        <%@include file="WEB-INF/jspf/rodape.jspf" %>
    </body>
</html>
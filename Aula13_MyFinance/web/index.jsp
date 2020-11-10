<%-- 
    Document   : index
    Created on : 9 de nov de 2020, 15:11:23
    Author     : rlarg
--%>

<%@page import="model.Usuario"%>
<%@page import="web.DbListener"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Início - FINANCY$</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <h1>FINANCY$</h1>
        <h2>Status da base de dados:</h2>
        <div><%= DbListener.statusMessage %></div>
        <hr/>
        <h2>Usuários</h2>
        <%for(Usuario u: Usuario.getList()){%>
        <div><%= u.getNome() %></div>
        <%}%>
    </body>
</html>

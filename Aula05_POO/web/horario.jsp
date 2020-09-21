<%-- 
    Document   : data
    Created on : 21 de set de 2020, 16:00:32
    Author     : rlarg
--%>

<%@page import="br.edu.fatecpg.poo.Horario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Horario agora = new Horario(16, 5, 0);
    Horario intervalo = new Horario();
    intervalo.setHoras(16);
    intervalo.setMinutos(40);
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>POO - Data</title>
    </head>
    <body>
        <h2><a href="index.jsp">Voltar</a></h2>
        <h1>POO</h1>
        <h2>Classe Horário</h2>
        <h3>Agora: <%= agora.getHoras()+":"+agora.getMinutos() %></h3>
        <h3>Agora: <%= intervalo.getHoras()+":"+intervalo.getMinutos() %></h3>
    </body>
</html>
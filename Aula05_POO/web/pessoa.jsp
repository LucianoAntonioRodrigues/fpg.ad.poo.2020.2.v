<%-- 
    Document   : index
    Created on : 21 de set de 2020, 15:13:32
    Author     : rlarg
--%>

<%@page import="java.util.Date"%>
<%@page import="br.edu.fatecpg.poo.Pessoa"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Pessoa eu = new Pessoa();
    eu.nome = "Ricardo";
    
    eu.pai = new Pessoa();
    eu.pai.nome = "José";
    eu.pai.pai = new Pessoa();
    eu.pai.pai.nome = "Ramiro";
    eu.pai.mãe = new Pessoa();
    eu.pai.mãe.nome = "Maria";
    
    eu.mãe = new Pessoa();
    eu.mãe.nome = "Maria";
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Testes com OO</title>
    </head>
    <body>
        <h2><a href="index.jsp">Voltar</a></h2>
        <h1>POO</h1>
        <h2>Classe Pessoa</h2>
        <p>O pai de <%= eu.nome %> é <%= eu.pai.nome %></p>
        <p>O avô de <%= eu.nome %> é <%= eu.pai.pai.nome %></p>
    </body>
</html>

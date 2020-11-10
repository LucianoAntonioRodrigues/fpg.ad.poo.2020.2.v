package model;

import java.util.ArrayList;
import java.sql.*;
import web.DbListener;

public class Usuario {
    private String login;
    private String nome;
    private String papel;
    
    public static ArrayList<Usuario> getList() throws Exception{
        ArrayList<Usuario> list = new ArrayList<>();
        Connection con = DbListener.getConnection();
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery("SELECT * FROM usuarios");
        while(rs.next()){
            list.add(new Usuario(
                    rs.getString("login"),
                    rs.getString("nome"),
                    rs.getString("role")
            ));
        }
        rs.close();
        stmt.close();
        con.close();
        return list;
    }

    public Usuario(String login, String nome, String papel) {
        this.login = login;
        this.nome = nome;
        this.papel = papel;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getPapel() {
        return papel;
    }

    public void setPapel(String papel) {
        this.papel = papel;
    }
    
    public static String getCreateStatement(){
        return "CREATE TABLE IF NOT EXISTS usuarios("
                + "login VARCHAR(50) UNIQUE NOT NULL,"
                + "nome VARCHAR(200) NOT NULL,"
                + "role VARCHAR(20) NOT NULL,"
                + "password_hash LONG NOT NULL"
                + ")";
    }
}
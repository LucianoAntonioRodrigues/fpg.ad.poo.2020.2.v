/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import java.sql.*;
import model.Usuario;

/**
 * Web application lifecycle listener.
 *
 * @author rlarg
 */
public class DbListener implements ServletContextListener {
    public static final String CLASS_NAME = "org.sqlite.JDBC";
    public static final String URL = "jdbc:sqlite:my_finance.db";
    
    public static String exceptionMessage = null;
    public static String statusMessage = null;

    public static Connection getConnection() throws Exception{
        return DriverManager.getConnection(URL);
    }
    
    @Override
    public void contextInitialized(ServletContextEvent sce) {
        Connection con = null;
        Statement stmt = null;
        try{
            Class.forName(CLASS_NAME);
            con = DriverManager.getConnection(URL);
            statusMessage = "Conectou";
            stmt = con.createStatement();
            statusMessage += "; criando tabela 'usuarios'...";
            stmt.execute(Usuario.getCreateStatement());
            statusMessage += "; tabela 'usuarios' criada";
            if(Usuario.getList().isEmpty()){
                statusMessage += "; tabela vazia, criando usuários...";
                stmt.execute("INSERT INTO usuarios "
                + "VALUES('admin', 'Administrador', 'ADMINISTRADOR', "+"1234".hashCode()+")");
                statusMessage += "; usuário 'admin' criado";
                stmt.execute("INSERT INTO usuarios "
                + "VALUES('fulano', 'Fulano da Silva', 'USUÁRIO', "+"1234".hashCode()+")");
                statusMessage += "; usuário 'fulano' criado";
            }
            
            //TODO: criar as tabelas categorias e transações
            statusMessage += "; Desconectou";
        }catch(Exception ex){
            statusMessage += "; Ocorreu exceção";
            exceptionMessage = ex.getLocalizedMessage();
        }finally{
            try{stmt.close();}catch(Exception ex2){}
            try{con.close();}catch(Exception ex2){}
        }
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
    }
}

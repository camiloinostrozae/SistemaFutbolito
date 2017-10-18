package com.futbolito.persistencia;

import java.sql.DriverManager;
import java.sql.SQLException;

import com.futbolito.to.UsuarioTO;
import com.mysql.jdbc.Connection;
import java.sql.PreparedStatement;

public class UsuarioDAO {
	private static final String READ_QUERY="select * from usuario where nombre=? and contrasena=?";
	private static final String DB_NAME="futbolito";
    private static final String PORT="3306";
    private static final String URL="jdbc:mysql://localhost:"+PORT+"/"+DB_NAME;
    private static final String USER="root";
    private static final String PASSWORD="188084796g";
    
    
    public int login(UsuarioTO usuario) {
        //put your code here
        Connection conn=null;
        try{
            conn=getConnection();
            PreparedStatement ps=conn.prepareStatement(READ_QUERY);
            ps.setString(1, usuario.getNombre());
            ps.setString(2, usuario.getContraseña());
            ps.executeUpdate();
            return 1;
        }catch(Exception e){
            return 0;
        }
    }
    
	public static Connection getConnection(){
        Connection conn=null;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            conn=(Connection) DriverManager.getConnection(URL, USER, PASSWORD);
        }catch(ClassNotFoundException | SQLException el){
            el.printStackTrace();
            System.err.println("Quedo la parte hermano!!!");
        }
        return conn;
    }
}

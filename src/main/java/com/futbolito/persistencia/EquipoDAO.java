package com.futbolito.persistencia;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.logging.Level;
import java.util.logging.Logger;

import com.futbolito.to.EquipoTO;
import com.mysql.jdbc.Connection;

public class EquipoDAO {
	
	private static final String READ_ALL = "select * from equipo";
    private static final String DB_NAME = "futbolito";
    private static final String PORT="3306";
    private static final String URL="jdbc:mysql://localhost:"+PORT+"/"+DB_NAME;
    private static final String USER="root";
    private static final String PASSWORD="";
    
    
    
    public LinkedList<EquipoTO> readAll() throws SQLException{
        LinkedList<EquipoTO> list = new LinkedList<>();
        EquipoTO result = null;
        Connection conn=null;
        try {
            conn = getConnection();
            PreparedStatement ps = conn.prepareStatement(READ_ALL);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                result= new EquipoTO();
                result.setIdEquipo(rs.getInt("idEquipo"));
                result.setNombre(rs.getString("Nombre"));
                result.setNroPartidos(rs.getInt("numeroPartidos"));
                result.setNroJugadores(rs.getInt("numeroJugadores"));
                result.setIdUsuario(rs.getInt("idUsuario"));
                list.add(result);
            }
        } catch (SQLException ex) {
            Logger.getLogger(EquipoDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally{
            conn.close();
        }
        return list;
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

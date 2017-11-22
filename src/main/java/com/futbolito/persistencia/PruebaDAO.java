package com.futbolito.persistencia;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.logging.Level;
import java.util.logging.Logger;

import com.futbolito.to.PruebaTO;
import com.futbolito.to.ReservaTO;
import com.mysql.jdbc.Connection;

public class PruebaDAO {
	
	
	private static final String READ = "SELECT DISTINCT REC.Nombre, REC.Direccion,C.Numero , R.Fecha, R.Hora FROM Reserva as R JOIN Cancha as C ON R.Cancha_idCancha = C.idCancha JOIN Recinto AS REC ON C.idRecinto=REC.idRecinto WHERE R.Usuario_idUsuario = ?";
    private static final String DB_NAME = "futbolito";
    private static final String PORT="3306";
    private static final String URL="jdbc:mysql://localhost:"+PORT+"/"+DB_NAME;
    private static final String USER="root";
    private static final String PASSWORD="188084796g";
    
    
    public LinkedList<PruebaTO> readAll(int id) throws SQLException{
        LinkedList<PruebaTO> list = new LinkedList<>();
        PruebaTO result = null;
        Connection conn=null;
        try {
            conn = getConnection();
            PreparedStatement ps = conn.prepareStatement(READ);
            ps.setInt(1,id);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                result= new PruebaTO();
                result.setNombreRecinto(rs.getString("Nombre"));
                result.setDireccion(rs.getString("Direccion"));
                result.setFecha(rs.getDate("fecha"));
                result.setHora(rs.getString("Hora"));
                result.setNumeroCancha(rs.getInt("Numero"));
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

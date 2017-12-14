package com.futbolito.persistencia;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.logging.Level;
import java.util.logging.Logger;

import com.futbolito.to.TorneoTO;
import com.mysql.jdbc.Connection;

public class TorneoDAO {
	
	private static final String READ_ALL = "select * from torneo";
	private static final String READ_ = "select * from cancha where idTorneo=?";
	//private static final String UPDATE_ESTADO_CANCHA = "UPDATE cancha SET Estado = ? WHERE idCancha = ?";
    private static final String DB_NAME = "futbolito";
    private static final String PORT="3306";
    private static final String URL="jdbc:mysql://localhost:"+PORT+"/"+DB_NAME;
    private static final String USER="root";
    private static final String PASSWORD="";
    
    
    
    public LinkedList<TorneoTO> readAll() throws SQLException{
        LinkedList<TorneoTO> list = new LinkedList<>();
        TorneoTO result = null;
        Connection conn=null;
        try {
            conn = getConnection();
            PreparedStatement ps = conn.prepareStatement(READ_ALL);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                result= new TorneoTO();
                result.setIdTorneo(rs.getInt("idTorneo"));
                result.setFechaInicio(rs.getDate("FechaInicio"));
                result.setNumeroParticipantes(rs.getInt("numeroParticipantes"));
                result.setIdCampeon(rs.getInt("idCampeon"));
                result.setIdUsuario(rs.getInt("idUsuario"));
                list.add(result);
            }
        } catch (SQLException ex) {
            Logger.getLogger(TorneoDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally{
            conn.close();
        }
        return list;
    }
    
    /*
    public void  actualizarEstadoCancha(CanchaTO can) throws SQLException{
        Connection conn=null;
        
        try{
            conn=getConnection();
            PreparedStatement ps=conn.prepareStatement(UPDATE_ESTADO_CANCHA);
            ps.setString(1, can.getEstado());
            ps.setInt(2, can.getIdCancha()); 
            ps.executeUpdate();
            
            
        }catch(SQLException ex){
            Logger.getLogger(EquipoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }finally{
            if(conn!=null){
                conn.close();
            }
        }
    }
    
    
    */

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

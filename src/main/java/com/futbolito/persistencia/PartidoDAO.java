package com.futbolito.persistencia;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.logging.Level;
import java.util.logging.Logger;

import com.futbolito.to.EquipoTO;
import com.futbolito.to.PartidoTO;
import com.mysql.jdbc.Connection;

public class PartidoDAO {

	private static final String READ_ALL = "select * from partido";
	private static final String READ_PARTIDO_TORNEO = "select * from partido where idTorneo = ?";
	private static final String READ_PROPIOS = "select * from partido where idUsuario=?";
	private static final String UPDATE="UPDATE `equipo` SET `Nombre`=?,`numeroPartidos`=?,`numeroJugadores`=? ,`idUsuario`=? WHERE `idEquipo`=?";
	private static final String DELETE ="DELETE FROM `equipo` WHERE `idEquipo`=?";
	private static final String INSERT_QUERY = "insert into equipo (Nombre,numeroPartidos,numeroJugadores,idUsuario) values (?,?,?,?)";
	private static final String BUSCAR_POR_ID = "select * from equipo where `idEquipo`=?";
	private static final String ACTUALIZA_CANTJUG = "UPDATE `equipo` SET `numeroJugadores`=? WHERE `idEquipo`=?";
    private static final String DB_NAME = "futbolito";
    private static final String PORT="3306";
    private static final String URL="jdbc:mysql://localhost:"+PORT+"/"+DB_NAME;
    private static final String USER="root";
    private static final String PASSWORD="";
    

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
    
    
    public LinkedList<PartidoTO> readAll() throws SQLException{
        LinkedList<PartidoTO> list = new LinkedList<>();
        PartidoTO result = null;
        Connection conn=null;
        try {
            conn = getConnection();
            PreparedStatement ps = conn.prepareStatement(READ_ALL);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                result= new PartidoTO();
                result.setIdPartido(rs.getInt("idPartido"));
                result.setFecha(rs.getDate("Fecha"));
                result.setHoraInicio(rs.getTime("horaInicio"));
                result.setHoraFin(rs.getTime("horaFin"));
                result.setEstado(rs.getString("Estado"));
                result.setGolesEquipo1(rs.getInt("golesEquipo1"));
                result.setGolesEquipo2(rs.getInt("golesEquipo2"));
                result.setIdEquipo1(rs.getInt("idEquipo1"));
                result.setIdEquipo2(rs.getInt("idEquipo2"));
                result.setIdCancha(rs.getInt("idCancha"));
                result.setIdUsuario(rs.getInt("idUsuario"));
                list.add(result);
            }
        } catch (SQLException ex) {
            Logger.getLogger(PartidoDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally{
            conn.close();
        }
        return list;
    }
    public LinkedList<PartidoTO> readPartidoTorneo(int id) throws SQLException{
        LinkedList<PartidoTO> list = new LinkedList<>();
        PartidoTO result = null;
        Connection conn=null;
        try {
            conn = getConnection();
            PreparedStatement ps = conn.prepareStatement(READ_PARTIDO_TORNEO);
            ps.setInt(1, id );
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                result= new PartidoTO();
                result.setIdPartido(rs.getInt("idPartido"));
                result.setFecha(rs.getDate("Fecha"));
                result.setHoraInicio(rs.getTime("horaInicio"));
                result.setHoraFin(rs.getTime("horaFin"));
                result.setEstado(rs.getString("Estado"));
                result.setGolesEquipo1(rs.getInt("golesEquipo1"));
                result.setGolesEquipo2(rs.getInt("golesEquipo2"));
                result.setIdEquipo1(rs.getInt("idEquipo1"));
                result.setIdEquipo2(rs.getInt("idEquipo2"));
                result.setIdCancha(rs.getInt("idCancha"));
                result.setIdUsuario(rs.getInt("idUsuario"));
                list.add(result);
            }
        } catch (SQLException ex) {
            Logger.getLogger(PartidoDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally{
            conn.close();
        }
        return list;
    }
    public LinkedList<PartidoTO> listarPartidosPropios(int id) throws SQLException{
        LinkedList<PartidoTO> list = new LinkedList<>();
        PartidoTO result = null;
        Connection conn=null;
        try {
            conn = getConnection();
            PreparedStatement ps = conn.prepareStatement(READ_PROPIOS);
            ps.setInt(1, id );
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                result= new PartidoTO();
                result.setIdPartido(rs.getInt("idPartido"));
                result.setFecha(rs.getDate("Fecha"));
                result.setHoraInicio(rs.getTime("horaInicio"));
                result.setHoraFin(rs.getTime("horaFin"));
                result.setEstado(rs.getString("Estado"));
                result.setGolesEquipo1(rs.getInt("golesEquipo1"));
                result.setGolesEquipo2(rs.getInt("golesEquipo2"));
                result.setIdEquipo1(rs.getInt("idEquipo1"));
                result.setIdEquipo2(rs.getInt("idEquipo2"));
                result.setIdCancha(rs.getInt("idCancha"));
                result.setIdUsuario(rs.getInt("idUsuario"));
                result.setIdTorneo(rs.getInt("idTorneo"));
                list.add(result);
            }
        } catch (SQLException ex) {
            Logger.getLogger(PartidoDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally{
            conn.close();
        }
        return list;
    }
    
    
}

package com.futbolito.to;

import java.sql.Date;

public class ReservaTO {
	
	private int idUsuario;
	private int idCancha;
	private Date fecha;
	private String hora;
	
	
	
	
	public String getHora() {
		return hora;
	}
	public void setHora(String hora) {
		this.hora = hora;
	}
	public int getIdUsuario() {
		return idUsuario;
	}
	public void setIdUsuario(int idUsuario) {
		this.idUsuario = idUsuario;
	}
	public int getIdCancha() {
		return idCancha;
	}
	public void setIdCancha(int idCancha) {
		this.idCancha = idCancha;
	}
	public Date getFecha() {
		return fecha;
	}
	public void setFecha(Date fecha) {
		this.fecha = fecha;
	}
	
	
	
	

}

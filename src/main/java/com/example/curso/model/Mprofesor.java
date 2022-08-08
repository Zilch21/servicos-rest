package com.example.curso.model;

import com.example.curso.entity.Profesor;

public class Mprofesor {

	private long id;
	private String nombre;
	private String email;
	private String foto;
	
	public Mprofesor() {
		
	}
	public Mprofesor(Profesor profesor) {
		this.id = profesor.getId();
		this.nombre = profesor.getNombre();
		this.email = profesor.getEmail();
		this.foto = profesor.getFoto();
	}
	public Mprofesor(long id, String nombre, String email, String foto) {
		super();
		this.id = id;
		this.nombre = nombre;
		this.email = email;
		this.foto = foto;
	}
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getFoto() {
		return foto;
	}
	public void setFoto(String foto) {
		this.foto = foto;
	}
	
}

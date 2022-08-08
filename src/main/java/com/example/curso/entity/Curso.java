package com.example.curso.entity;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.PrePersist;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name="Curso")
public class Curso implements Serializable {
	
	public Curso() {
		
	}
	private static final long serialVersionUID = 1L;
	
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long curso_id;
	
	
    private String nombre;
	
    @Column(name="profesor_id")
	private Long profesorId;
    
    @Column(name="create_at")
    @Temporal(TemporalType.DATE)
    private Date createAt;

    //enviar fecha de creación 
    @PrePersist
    public void PrePersist(){
        createAt = new Date();
    }
    

	public Date getCreateAt() {
		return createAt;
	}


	public void setCreateAt(Date createAt) {
		this.createAt = createAt;
	}


	public Long getCurso_id() {
		return curso_id;
	}

	public void setCurso_id(Long curso_id) {
		this.curso_id = curso_id;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public Long getProfesorId() {
		return profesorId;
	}

	public void setProfesorId(Long profesorId) {
		this.profesorId = profesorId;
	}
	


}

package com.example.curso.entity;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.*;

import com.fasterxml.jackson.annotation.JsonBackReference;
import javax.persistence.JoinColumn;

import lombok.Getter;
import lombok.Setter;


@Entity
@Table(name="profesores")
public class Profesor implements Serializable {

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


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public String getFoto() {
		return foto;
	}


	public void setFoto(String foto) {
		this.foto = foto;
	}


	public Date getCreateAt() {
		return createAt;
	}


	public void setCreateAt(Date createAt) {
		this.createAt = createAt;
	}


	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @Column(name="nombre")
    private String nombre;

    @Column(length = 60, unique=true)
    String email;

    private String password;

    @Column(length = 2000)
    private String foto;

    @Column(name="create_at")
    @Temporal(TemporalType.DATE)
    private Date createAt;

    //enviar fecha de creación 
    @PrePersist
    public void PrePersist(){
        createAt = new Date();
    }

    public void AddLenguaje(Lenguaje lenguaje) {
    	this.lenguajes.add(lenguaje);
    }
    // si se borra el profesor borra todas las conexiones a los cursos que tenia el profesor 
    @OneToMany(cascade=CascadeType.ALL)
    @JoinColumn(name="profesor_id", referencedColumnName = "id")
    private List<Curso> curso=new ArrayList<>();
    
    
    @ManyToMany(cascade=CascadeType.ALL)
    @JsonBackReference
    @JoinTable(name = "profesores_lenguajes",
    		joinColumns = @JoinColumn(name="profesor_id", referencedColumnName ="id"),
    		inverseJoinColumns = @JoinColumn(name = "lenguaje_id", referencedColumnName = "id"))
    private Set<Lenguaje> lenguajes = new HashSet<Lenguaje>();
    
    public Set<Lenguaje> getLenguajes() {
		return lenguajes;
	}


	public void setLenguajes(Set<Lenguaje> lenguajes) {
		this.lenguajes = lenguajes;
	}


	public List<Curso> getCurso() {
		return curso;
	}


	public void setCurso(List<Curso> curso) {
		this.curso = curso;
	}


	private static final long serialVersionUID = 1L;
    
}

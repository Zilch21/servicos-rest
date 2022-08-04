package com.example.curso.entity;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.*;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name="profesores")
public class Profesor implements Serializable {

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







    private static final long serialVersionUID = 1L;
    
}

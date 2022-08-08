package com.example.curso.mapper;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Component;

import com.example.curso.entity.Profesor;
import com.example.curso.model.Mprofesor;

@Component("mapper")
public class Mapper {

	public static List<Mprofesor> convertirLista(List<Profesor> profesores){
		List<Mprofesor> mProfesores = new ArrayList<>();
		for(Profesor profesor: profesores) {
			mProfesores.add(new Mprofesor(profesor));
		}
		return mProfesores;
		
	}
}

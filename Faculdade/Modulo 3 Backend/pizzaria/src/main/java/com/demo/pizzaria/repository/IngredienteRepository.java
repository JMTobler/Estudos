package com.demo.pizzaria.repository;

import com.demo.pizzaria.model.Ingrediente;
import java.util.List;
import java.util.ArrayList;

public class IngredienteRepository {
    private List<Ingrediente> ingredientes = new ArrayList<Ingrediente>();
    private int ultimoId = 0;

    public Ingrediente adicionar(Ingrediente ingrediente){
        ultimoId++;

        ingrediente.setId(ultimoId);
        ingredientes.add(ingrediente);

        return ingrediente;
    }
}

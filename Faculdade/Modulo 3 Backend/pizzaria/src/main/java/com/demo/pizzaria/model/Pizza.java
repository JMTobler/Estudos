package com.demo.pizzaria.model;

import java.util.List;
import java.util.ArrayList;

import com.demo.pizzaria.model.Enum.EtipoPizza;

public class Pizza {
    private Long id;
    private String nome;
    private List<ModeloPizza> modelos;
    private List<Ingrediente> ingredientes;
    private EtipoPizza tipo;
    private boolean ativa;
    private String observacao;

    //Constructors
    public Pizza() {
    }

    public Pizza(String nome, List<ModeloPizza> modelos, List<Ingrediente> ingredientes, EtipoPizza tipo, boolean ativa, String observacao) {
        this.nome = nome;
        this.modelos = modelos;
        this.ingredientes = ingredientes;
        this.tipo = tipo;
        this.ativa = ativa;
        this.observacao = observacao;
    }

    public Pizza(String nome, EtipoPizza tipo, boolean ativa, String observacao) {
        this.nome = nome;
        this.tipo = tipo;
        this.ativa = ativa;
        this.observacao = observacao;

        this.modelos = new ArrayList<ModeloPizza>();
        this.ingredientes = new ArrayList<Ingrediente>();
    }

    //Getters e Setters
    public Long getId() {
        return id;
    }
    public void setId(Long id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }
    public void setNome(String nome) {
        this.nome = nome;
    }

    public List<ModeloPizza> getModelos() {
        return modelos;
    }
    public void setModelos(List<ModeloPizza> modelos) {
        this.modelos = modelos;
    }

    public List<Ingrediente> getIngredientes() {
        return ingredientes;
    }
    public void setIngredientes(List<Ingrediente> ingredientes) {
        this.ingredientes = ingredientes;
    }

    public EtipoPizza getTipo() {
        return tipo;
    }
    public void setTipo(EtipoPizza tipo) {
        this.tipo = tipo;
    }

    public boolean isAtiva() {
        return ativa;
    }
    public void setAtiva(boolean ativa) {
        this.ativa = ativa;
    }

    public String getObservacao() {
        return observacao;
    }
    public void setObservacao(String observacao) {
        this.observacao = observacao;
    }
}

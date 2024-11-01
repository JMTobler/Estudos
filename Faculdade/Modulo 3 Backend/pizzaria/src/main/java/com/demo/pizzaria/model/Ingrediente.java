package com.demo.pizzaria.model;

import java.util.Date;

public class Ingrediente {
    private Long id;
    private String nome;
    private Date dataValidade;
    private String observacao;

    // Constructors
    public Ingrediente(String nome, Date dataValidade, String observacao) {
        this.nome = nome;
        this.dataValidade = dataValidade;
        this.observacao = observacao;
    }
    public Ingrediente(){
    }

    // Getters and Setters
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

    public Date getDataValidade() {
        return dataValidade;
    }
    public void setDataValidade(Date dataValidade) {
        this.dataValidade = dataValidade;
    }

    public String getObservacao() {
        return observacao;
    }
    public void setObservacao(String observacao) {
        this.observacao = observacao;
    }
}

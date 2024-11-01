package com.demo.pizzaria.model;

public class ModeloPizza {
    private Long id;
    private String tamanho; //Media, Grande e Familia
    private Double valor;

    //Constructors
    public ModeloPizza(Long id, String tamanho, Double valor) {
        this.id = id;
        this.tamanho = tamanho;
        this.valor = valor;
    }
    public ModeloPizza(){
    }


    //Getters e setters
    public Long getId() {
        return id;
    }
    public void setId(Long id) {
        this.id = id;
    }

    public String getTamanho() {
        return tamanho;
    }
    public void setTamanho(String tamanho) {
        this.tamanho = tamanho;
    }

    public Double getValor() {
        return valor;
    }
    public void setValor(Double valor) {
        this.valor = valor;
    }

    
}

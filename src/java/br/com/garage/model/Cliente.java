package br.com.garage.model;

public class Cliente  extends Pessoa {
    
    private Integer id;
    private String email;
    private String senha;
    private Integer nivel;
    private String observacao;

    public Cliente() {
    }

    public Cliente(Integer id, String email, String senha, Integer nivel, String observacao) {
        this.id = id;
        this.email = email;
        this.senha = senha;
        this.nivel = nivel;
        this.observacao = observacao;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public Integer getNivel() {
        return nivel;
    }

    public void setNivel(Integer nivel) {
        this.nivel = nivel;
    }

    public String getObservacao() {
        return observacao;
    }

    public void setObservacao(String observacao) {
        this.observacao = observacao;
    }


    
    
    
}

package br.com.garage.model;

import java.sql.Date;

public class Pessoa {
    
    private Integer id;
    private String nome;
    private String CPFCNPJ;
    private String RGIE;
    private String DataNascimento;

    public Pessoa() {
    }

    public Pessoa(Integer id, String nome, String CPFCNPJ, String RGIE, String DataNascimento) {
        this.id = id;
        this.nome = nome;
        this.CPFCNPJ = CPFCNPJ;
        this.RGIE = RGIE;
        this.DataNascimento = DataNascimento;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getCPFCNPJ() {
        return CPFCNPJ;
    }

    public void setCPFCNPJ(String CPFCNPJ) {
        this.CPFCNPJ = CPFCNPJ;
    }

    public String getRGIE() {
        return RGIE;
    }

    public void setRGIE(String RGIE) {
        this.RGIE = RGIE;
    }

    public String getDataNascimento() {
        return DataNascimento;
    }

    public void setDataNascimento(String DataNascimento) {
        this.DataNascimento = DataNascimento;
    }

    
    
    
}

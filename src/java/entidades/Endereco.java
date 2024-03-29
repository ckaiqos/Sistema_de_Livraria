package entidades;
// Generated 06/07/2023 10:29:18 by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * Endereco generated by hbm2java
 */
public class Endereco  implements java.io.Serializable {


     private Integer codEndereco;
     private String bairro;
     private String logradouro;
     private String numero;
     private String cep;
     private String cidade;
     private String uf;
     private Set fornecedors = new HashSet(0);
     private Set clientes = new HashSet(0);

    public Endereco() {
    }

	
    public Endereco(String bairro, String logradouro) {
        this.bairro = bairro;
        this.logradouro = logradouro;
    }
    public Endereco(String bairro, String logradouro, String numero, String cep, String cidade, String uf, Set fornecedors, Set clientes) {
       this.bairro = bairro;
       this.logradouro = logradouro;
       this.numero = numero;
       this.cep = cep;
       this.cidade = cidade;
       this.uf = uf;
       this.fornecedors = fornecedors;
       this.clientes = clientes;
    }
   
    public Integer getCodEndereco() {
        return this.codEndereco;
    }
    
    public void setCodEndereco(Integer codEndereco) {
        this.codEndereco = codEndereco;
    }
    public String getBairro() {
        return this.bairro;
    }
    
    public void setBairro(String bairro) {
        this.bairro = bairro;
    }
    public String getLogradouro() {
        return this.logradouro;
    }
    
    public void setLogradouro(String logradouro) {
        this.logradouro = logradouro;
    }
    public String getNumero() {
        return this.numero;
    }
    
    public void setNumero(String numero) {
        this.numero = numero;
    }
    public String getCep() {
        return this.cep;
    }
    
    public void setCep(String cep) {
        this.cep = cep;
    }
    public String getCidade() {
        return this.cidade;
    }
    
    public void setCidade(String cidade) {
        this.cidade = cidade;
    }
    public String getUf() {
        return this.uf;
    }
    
    public void setUf(String uf) {
        this.uf = uf;
    }
    public Set getFornecedors() {
        return this.fornecedors;
    }
    
    public void setFornecedors(Set fornecedors) {
        this.fornecedors = fornecedors;
    }
    public Set getClientes() {
        return this.clientes;
    }
    
    public void setClientes(Set clientes) {
        this.clientes = clientes;
    }




}



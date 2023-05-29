package entidades;
// Generated 29/05/2023 09:15:35 by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * Telefone generated by hbm2java
 */
public class Telefone  implements java.io.Serializable {


     private Integer codTelefone;
     private Integer numTelefone;
     private Set fornecedors = new HashSet(0);
     private Set clientes = new HashSet(0);

    public Telefone() {
    }

    public Telefone(Integer numTelefone, Set fornecedors, Set clientes) {
       this.numTelefone = numTelefone;
       this.fornecedors = fornecedors;
       this.clientes = clientes;
    }
   
    public Integer getCodTelefone() {
        return this.codTelefone;
    }
    
    public void setCodTelefone(Integer codTelefone) {
        this.codTelefone = codTelefone;
    }
    public Integer getNumTelefone() {
        return this.numTelefone;
    }
    
    public void setNumTelefone(Integer numTelefone) {
        this.numTelefone = numTelefone;
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



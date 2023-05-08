package entidades;
// Generated 08/05/2023 08:52:53 by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * Acesso generated by hbm2java
 */
public class Acesso  implements java.io.Serializable {


     private Integer codPermissao;
     private String categoria;
     private Set contas = new HashSet(0);

    public Acesso() {
    }

    public Acesso(String categoria, Set contas) {
       this.categoria = categoria;
       this.contas = contas;
    }
   
    public Integer getCodPermissao() {
        return this.codPermissao;
    }
    
    public void setCodPermissao(Integer codPermissao) {
        this.codPermissao = codPermissao;
    }
    public String getCategoria() {
        return this.categoria;
    }
    
    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }
    public Set getContas() {
        return this.contas;
    }
    
    public void setContas(Set contas) {
        this.contas = contas;
    }




}


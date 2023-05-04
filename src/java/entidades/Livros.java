package entidades;
// Generated 04/05/2023 13:33:19 by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * Livros generated by hbm2java
 */
public class Livros  implements java.io.Serializable {


     private Integer codLivro;
     private String nomeLivro;
     private Short quantidade;
     private Float preco;
     private Set vendas = new HashSet(0);

    public Livros() {
    }

    public Livros(String nomeLivro, Short quantidade, Float preco, Set vendas) {
       this.nomeLivro = nomeLivro;
       this.quantidade = quantidade;
       this.preco = preco;
       this.vendas = vendas;
    }
   
    public Integer getCodLivro() {
        return this.codLivro;
    }
    
    public void setCodLivro(Integer codLivro) {
        this.codLivro = codLivro;
    }
    public String getNomeLivro() {
        return this.nomeLivro;
    }
    
    public void setNomeLivro(String nomeLivro) {
        this.nomeLivro = nomeLivro;
    }
    public Short getQuantidade() {
        return this.quantidade;
    }
    
    public void setQuantidade(Short quantidade) {
        this.quantidade = quantidade;
    }
    public Float getPreco() {
        return this.preco;
    }
    
    public void setPreco(Float preco) {
        this.preco = preco;
    }
    public Set getVendas() {
        return this.vendas;
    }
    
    public void setVendas(Set vendas) {
        this.vendas = vendas;
    }




}



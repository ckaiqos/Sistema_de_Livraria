package entidades;
// Generated 06/07/2023 10:29:18 by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * Livros generated by hbm2java
 */
public class Livros  implements java.io.Serializable {


     private Integer codLivro;
     private Imgslivros imgslivros;
     private String nomeLivro;
     private float preco;
     private String isbn;
     private int exemplar;
     private String genero;
     private String edicao;
     private String ano;
     private String autor;
     private String proprietario;
     private Set vendas = new HashSet(0);

    public Livros() {
    }

	
    public Livros(String nomeLivro, float preco, String isbn, int exemplar, String proprietario) {
        this.nomeLivro = nomeLivro;
        this.preco = preco;
        this.isbn = isbn;
        this.exemplar = exemplar;
        this.proprietario = proprietario;
    }
    public Livros(Imgslivros imgslivros, String nomeLivro, float preco, String isbn, int exemplar, String genero, String edicao, String ano, String autor, String proprietario, Set vendas) {
       this.imgslivros = imgslivros;
       this.nomeLivro = nomeLivro;
       this.preco = preco;
       this.isbn = isbn;
       this.exemplar = exemplar;
       this.genero = genero;
       this.edicao = edicao;
       this.ano = ano;
       this.autor = autor;
       this.proprietario = proprietario;
       this.vendas = vendas;
    }
   
    public Integer getCodLivro() {
        return this.codLivro;
    }
    
    public void setCodLivro(Integer codLivro) {
        this.codLivro = codLivro;
    }
    public Imgslivros getImgslivros() {
        return this.imgslivros;
    }
    
    public void setImgslivros(Imgslivros imgslivros) {
        this.imgslivros = imgslivros;
    }
    public String getNomeLivro() {
        return this.nomeLivro;
    }
    
    public void setNomeLivro(String nomeLivro) {
        this.nomeLivro = nomeLivro;
    }
    public float getPreco() {
        return this.preco;
    }
    
    public void setPreco(float preco) {
        this.preco = preco;
    }
    public String getIsbn() {
        return this.isbn;
    }
    
    public void setIsbn(String isbn) {
        this.isbn = isbn;
    }
    public int getExemplar() {
        return this.exemplar;
    }
    
    public void setExemplar(int exemplar) {
        this.exemplar = exemplar;
    }
    public String getGenero() {
        return this.genero;
    }
    
    public void setGenero(String genero) {
        this.genero = genero;
    }
    public String getEdicao() {
        return this.edicao;
    }
    
    public void setEdicao(String edicao) {
        this.edicao = edicao;
    }
    public String getAno() {
        return this.ano;
    }
    
    public void setAno(String ano) {
        this.ano = ano;
    }
    public String getAutor() {
        return this.autor;
    }
    
    public void setAutor(String autor) {
        this.autor = autor;
    }
    public String getProprietario() {
        return this.proprietario;
    }
    
    public void setProprietario(String proprietario) {
        this.proprietario = proprietario;
    }
    public Set getVendas() {
        return this.vendas;
    }
    
    public void setVendas(Set vendas) {
        this.vendas = vendas;
    }




}



package entidades;
// Generated 05/06/2023 11:40:55 by Hibernate Tools 4.3.1



/**
 * Venda generated by hbm2java
 */
public class Venda  implements java.io.Serializable {


     private Integer codVenda;
     private Cliente cliente;
     private Livros livros;
     private Float valorTotal;

    public Venda() {
    }

	
    public Venda(Cliente cliente, Livros livros) {
        this.cliente = cliente;
        this.livros = livros;
    }
    public Venda(Cliente cliente, Livros livros, Float valorTotal) {
       this.cliente = cliente;
       this.livros = livros;
       this.valorTotal = valorTotal;
    }
   
    public Integer getCodVenda() {
        return this.codVenda;
    }
    
    public void setCodVenda(Integer codVenda) {
        this.codVenda = codVenda;
    }
    public Cliente getCliente() {
        return this.cliente;
    }
    
    public void setCliente(Cliente cliente) {
        this.cliente = cliente;
    }
    public Livros getLivros() {
        return this.livros;
    }
    
    public void setLivros(Livros livros) {
        this.livros = livros;
    }
    public Float getValorTotal() {
        return this.valorTotal;
    }
    
    public void setValorTotal(Float valorTotal) {
        this.valorTotal = valorTotal;
    }




}



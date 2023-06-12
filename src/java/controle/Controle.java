/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controle;

import java.util.List;
import entidades.*;

/**
 *
 * @author windows
 */
public class Controle {
    
    private Cadastro cad = new Cadastro(); 
    private Consulta consul = new Consulta();
    
    public void salvarLivro(Livros livro){
          cad.salvar(livro);
    }
    
    public List consultarLivrosEspecial(){return consul.consultaTodos(Livros.class);}
    
    public List consultarLivros(){return cad.consultaTodos(Livros.class);}
        
     public void salvarVenda(Venda venda){
          cad.salvar(venda);
    }
    
    public List consultarVendas(){return cad.consultaTodos(Venda.class);}
    
    public List consultarAdministradores(){return cad.consultaTodos(Administrador.class);}
    
    public List consultarClientes(){return cad.consultaTodos(Cliente.class);}
    
    public void salvarCliente(Cliente cliente){cad.salvar(cliente);}
        
     public void salvarFornecedor(Fornecedor fornecedor){
          cad.salvar(fornecedor);
    }
    
    public List consultarFornecedores(){return cad.consultaTodos(Fornecedor.class);}
        
   
}

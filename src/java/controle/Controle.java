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
    
    public void salvarLivro(Livros livro){
          cad.salvar(livro);
    }
    
    public List consultarLivros(){return cad.consultaTodos(Livros.class);}
    
     public void salvarTelefone(Telefone telefone){
          cad.salvar(telefone);
    }
    
    public List consultarTelefones(){return cad.consultaTodos(Telefone.class);}
    
     public void salvarEndereco(Endereco endereco){
          cad.salvar(endereco);
    }
    
    public List consultarEnderecos(){return cad.consultaTodos(Endereco.class);}
    
     public void salvarVenda(Venda venda){
          cad.salvar(venda);
    }
    
    public List consultarVendas(){return cad.consultaTodos(Venda.class);}
    
    public List consultarClientes(){return cad.consultaTodos(Cliente.class);}
    
    public void salvarCliente(Cliente cliente){cad.salvar(cliente);}
    
    public void salvarConta(Conta conta){cad.salvar(conta);}
    
     public void salvarFornecedor(Fornecedor fornecedor){
          cad.salvar(fornecedor);
    }
    
    public List consultarFornecedores(){return cad.consultaTodos(Fornecedor.class);}
    
    public List consultarContas(){return cad.consultaTodos(Conta.class);}
    
    public void salvarFornecedor(Conta conta){
          cad.salvar(conta);
    }
    
}

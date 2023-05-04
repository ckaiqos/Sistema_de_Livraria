/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controle;

import java.util.List;
import entidades.*;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author windows
 */
public class Cadastro {
     static private Session ses = HibernateUtil.getSessionFactory().openSession();
    
    public List consultaTodos(Class classe){return ses.createCriteria(classe).list();}
    
    public void salvar(Object obj){
            Transaction tr= ses.beginTransaction();
            ses.saveOrUpdate(obj);
            tr.commit();
                                  }
    
    public void delete(Object obj){
        Transaction tr= ses.beginTransaction();
        if (obj != null){ses.delete(obj);}
        tr.commit();
                                  }
    
    public Livros getLivro(int id){
        
        Livros livro = null;
        Transaction tr = ses.beginTransaction();
        livro = (Livros) ses.get(Livros.class, id);
        
        return livro;
    }
    
    public Endereco getEndereco(int id){
        
        Endereco endereco = null;
        Transaction tr = ses.beginTransaction();
        endereco = (Endereco) ses.get(Endereco.class, id);
        
        return endereco;
    }
    
    public Telefone getTelefone(int id){
        
        Telefone telefone = null;
        Transaction tr = ses.beginTransaction();
        telefone = (Telefone) ses.get(Telefone.class, id);
        
        return telefone;
    }
    
    public Cliente getCliente(int id){
        
        Cliente cliente = null;
        Transaction tr = ses.beginTransaction();
        cliente = (Cliente) ses.get(Cliente.class, id);
        
        return cliente;
    }
    
    public Fornecedor getFornecedor(int id){
        
        Fornecedor fornecedor = null;
        Transaction tr = ses.beginTransaction();
        fornecedor = (Fornecedor) ses.get(Fornecedor.class, id);
        
        return fornecedor;
    }
    
    public Venda getVenda(int id){
        
        Venda Venda = null;
        Transaction tr = ses.beginTransaction();
        Venda = (Venda) ses.get(Venda.class, id);
        
        return Venda;
    }
    
                                  }


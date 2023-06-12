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
    
    
    public List consultaTodos(Class classe){
        Session ses = HibernateUtil.getSessionFactory().openSession();
        return ses.createCriteria(classe).list();}
    
    public void salvar(Object obj){
            Session ses = HibernateUtil.getSessionFactory().openSession();
            Transaction tr= ses.beginTransaction();
            ses.saveOrUpdate(obj);
            tr.commit();
            
                                  }
    
    public void delete(Object obj){
        Session ses = HibernateUtil.getSessionFactory().openSession();
        Transaction tr= ses.beginTransaction();
        if (obj != null){ses.delete(obj);}
        tr.commit();
                                  }
    
    public Livros getLivro(int id){
        Session ses = HibernateUtil.getSessionFactory().openSession();
        Livros livro = null;
        livro = (Livros) ses.get(Livros.class, id);
        
        return livro;
    }
    
    public Cliente getCliente(int id){
        
        Session ses = HibernateUtil.getSessionFactory().openSession();
        Cliente cliente = null;
        cliente = (Cliente) ses.get(Cliente.class, id);
        
        return cliente;
    }
    
    public Fornecedor getFornecedor(int id){
        
        Session ses = HibernateUtil.getSessionFactory().openSession();
        Fornecedor fornecedor = null;
        fornecedor = (Fornecedor) ses.get(Fornecedor.class, id);
        
        return fornecedor;
    }
    
    public Venda getVenda(int id){
        Session ses = HibernateUtil.getSessionFactory().openSession();
        Venda Venda = null;
        Venda = (Venda) ses.get(Venda.class, id);
        
        return Venda;
    }
    
                                  }


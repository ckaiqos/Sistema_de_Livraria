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
 * @author Usuario
 */
public class Consulta {
    public List consultaTodos(Class classe){
        Session ses = HibernateUtil.getSessionFactory().openSession();
        List list = ses.createCriteria(classe).list();   
        ses.close();  
        return list;}
}

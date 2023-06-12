/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import controle.Controle;
import entidades.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author windows
 */
public class Login extends HttpServlet {
    private Controle con;
    @Override
    public void init() throws ServletException{                             
            super.init();
            con = new Controle();    
                                              }

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Login</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Login at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String resp = "index.jsp";
        Boolean erroLogin = false;
        
        
        String login = request.getParameter("login");
        String senha = request.getParameter("senha");
        
        try {
                MessageDigest md = MessageDigest.getInstance("MD5");
                byte[] messageDigest = md.digest(senha.getBytes());  
                BigInteger no = new BigInteger(1, messageDigest);  
                senha = no.toString(16);  
                while (senha.length() < 32){  
                   senha = "0" + senha;  
                                           }  
            } catch (NoSuchAlgorithmException ex) {
                Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
            }
      
        request.getSession().setAttribute("erroLogin", erroLogin);
        
        List<Cliente> listaClientes = con.consultarClientes();
        List<Fornecedor> listaFornecedores = con.consultarFornecedores();
        List<Administrador> listaAdministradores = con.consultarAdministradores();
        
        
        Iterator<Cliente> itec = listaClientes.iterator();
        Iterator<Fornecedor> itef = listaFornecedores.iterator();
        Iterator<Administrador> itea = listaAdministradores.iterator();
        
        Boolean isAdmin = false;  
        Boolean isForn = false;   
        Boolean isClient = false;
        
        int i = -1;
        
        while(itea.hasNext()){
                            i++;
                            Administrador administrador = new Administrador();
                            administrador = itea.next();
                            if(administrador.getLogin().equals(login)){
                                if((administrador.getSenha()).equals(senha)){
                                    isAdmin = true;
                                    erroLogin = false; 
                                    request.getSession().setAttribute("erroLogin", erroLogin);
                                    resp = "telaAdministrador.jsp";                                                       
                                    response.sendRedirect(resp);
                                    break;
                                                                            }
        }}
          i = -1;                  
        while(itef.hasNext()){
                            i++;
                            Fornecedor fornecedor = new Fornecedor();
                            fornecedor = itef.next();
                            if(fornecedor.getLogin().equals(login)){
                                if((fornecedor.getSenha()).equals(senha)){
                                    isForn = true;
                                    erroLogin = false; 
                                    request.getSession().setAttribute("erroLogin", erroLogin);
                                    request.getSession().setAttribute("fornecedorLogado", fornecedor);
                                    resp = "telaFornecedor.jsp";                                                       
                                    response.sendRedirect(resp);
                                    break;
                            }
                            }
        }
           i = -1;
        while(itec.hasNext()){
                            i++;
                            Cliente cliente = new Cliente();
                            cliente = itec.next();
                            if(cliente.getLogin().equals(login)){
                                if((cliente.getSenha()).equals(senha)){
                                    isClient = true;
                                    erroLogin = false; 
                                    request.getSession().setAttribute("erroLogin", erroLogin);
                                    request.getSession().setAttribute("clienteLogado", cliente);
                                    resp = "telaCliente.jsp";                                                       
                                    response.sendRedirect(resp);
                                    break;
                                }
                            }   
                            }
        
        if(!isForn && !isClient && !isAdmin){
            erroLogin = true; 
            request.getSession().setAttribute("erroLogin", erroLogin);
            resp = "index.jsp";
            response.sendRedirect(resp);
                                            }
        
        
                                
        
        }
                            
        
        
        
        
        
        
    

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

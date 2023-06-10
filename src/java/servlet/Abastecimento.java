/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import java.io.IOException;   
import controle.*;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;    
import java.util.Iterator;   
import java.util.List;     
import entidades.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Usuario
 */
public class Abastecimento extends HttpServlet {
    private Controle con;
    private Cadastro cad;
    @Override
    public void init() throws ServletException{                             
            super.init();
            con = new Controle();    
            cad = new Cadastro(); 
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
        Livros livro;       
        Integer i = 0;
        Integer qntDesej = request.getSession().getAttribute("qntDesej") != null? (Integer) request.getSession().getAttribute("qntDesej"): 1;     
        String pedido = request.getParameter("pedido");  
        List<Livros> listaLivros = con.consultarLivrosEspecial();      
        Iterator<Livros> ite = listaLivros.iterator();
        
        while(ite.hasNext()){  
            if(i == qntDesej){break;}
            livro = listaLivros.get(i);
            if(livro.getIsbn().equals(pedido) && !livro.getProprietario().equals("Belles Letres")){      
                
                livro.setProprietario("Belles Letres");     
                i++; 
                con.salvarLivro(livro);
                
                                                                                                            }
                            }     
        
            String sucesso = "Você fez uma compra com sucesso!"; 
            
            request.getSession().setAttribute("sucessoCompra", sucesso);
            String resp = "abastecimento.jsp";
            response.sendRedirect(resp);
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

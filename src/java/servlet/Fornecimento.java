/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import java.io.IOException;
import entidades.*;
import controle.Controle;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author windows
 */
public class Fornecimento extends HttpServlet {
    
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
            out.println("<meta charset = \"UTF-8\">");
            out.println("<title>Servlet Fornecimento</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Fornecimento at " + request.getContextPath() + "</h1>");
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
        
         request.setCharacterEncoding("UTF-8");

         
         String erroRegistro = "";  
         String resp = "fornecimento.jsp";
         Livros livro;
         Fornecedor fornecedorLogado = request.getSession().getAttribute("fornecedorLogado") != null? (Fornecedor) request.getSession().getAttribute("fornecedorLogado"): new Fornecedor();
         List<Livros> listaLivros;
         
         String nome = request.getParameter("nome");
         String autor = request.getParameter("autor");
         Integer qntDisp = Integer.parseInt(request.getParameter("qntDisp"));
         String preco = request.getParameter("preco");
         String ISBN = request.getParameter("ISBN");
         String ano = request.getParameter("ano");
         String edicao = request.getParameter("edicao");
         String genero = request.getParameter("genero");
         String proprietario = fornecedorLogado.getNomeFornecedor();
         
         listaLivros = con.consultarLivros();
         Iterator<Livros> ite = listaLivros.iterator();
         
         ISBN = ISBN.replaceAll("[^\\d]", "");   
         preco = preco.replaceAll(",", ".");
         preco = preco.replaceAll("[^\\d.]", "");
         
         
         float pref = Float.parseFloat(preco);
         
         int i = 0;     
         
         Integer qntExemplar = 0;
         while(ite.hasNext()){ 
             
             livro = ite.next();
             if(livro.getIsbn().equals(ISBN)){qntExemplar++;}
             
                             }
         
         while(i<qntDisp){
             livro = new Livros();
             i++; 
             livro.setNomeLivro(nome);
             livro.setAutor(autor);
             livro.setPreco(pref);
             livro.setExemplar(i+qntExemplar);
             livro.setIsbn(ISBN);
             livro.setAno(ano);
             livro.setEdicao(edicao);
             livro.setGenero(genero);
             livro.setProprietario(proprietario);
             con.salvarLivro(livro);
                          }
         
         /*livro.setNomeLivro(nome);
         livro.setAutor(autor);
         livro.setPreco(pref);
         livro.setIsbn(ISBN);
         livro.setAno(ano);
         livro.setEdicao(edicao);
         livro.setGenero(genero);
         livro.setProprietario(proprietario);*/
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

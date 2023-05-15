/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import controle.Controle;
import entidades.Conta;
import java.util.Iterator;
import java.util.List;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author windows
 */
public class Registro extends HttpServlet {
    
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
            out.println("<title>Servlet Registro</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Registro at " + request.getContextPath() + "</h1>");
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
        String erroRegistro;  
        Conta conta = new Conta(); 
        List<Conta> lista;
        
        String login = request.getParameter("novoLogin");
        String senha = request.getParameter("novaSenha");
        
        
        request.getSession().setAttribute("listaContas", con.consultarContas());
        lista = (List) request.getSession().getAttribute("listaContas");
        
        
        Iterator<Conta> ite = lista.iterator();
        int i = -1;
        
        
        
        while(ite.hasNext()){
                            i++;
                            conta = ite.next();
                            if(conta.getLogin().equals(login)){
                                
                                erroRegistro = "Essa conta já existe! Use outro nome de usuário.";
                                request.getSession().setAttribute("erroRegistro", erroRegistro);
                                //redirect
                                break;
                                
                                                              }}
        i=0; 
        
        if(senha.length() < 10){
            erroRegistro = "Essa senha é muito curta! Use pelo menos 10 caracteres";
            request.getSession().setAttribute("erroRegistro", erroRegistro);
                              }
        
        Pattern maisculas = Pattern.compile("[A-Z]");
        Pattern minusculas = Pattern.compile("[a-z]");
        Pattern numeros = Pattern.compile("[0-9]");
        Pattern especiais = Pattern.compile ("[^A-Za-z0-9]");
        
        
        Matcher temMaisculas = maisculas.matcher(senha);
        Matcher temMinusculas = minusculas.matcher(senha);
        Matcher temNumeros = numeros.matcher(senha);
        Matcher temEspeciais = especiais.matcher(senha);
        
        if (temMaisculas.find() == false){
            erroRegistro = "Essa senha não possuí caracteres maiúsculos! Formule outra que possua.";
            request.getSession().setAttribute("erroRegistro", erroRegistro);
            //redirect
                                         }
        
        if (temMinusculas.find() == false){
            erroRegistro = "Essa senha não possuí caracteres minúsculos! Formule outra que possua.";
            request.getSession().setAttribute("erroRegistro", erroRegistro);
                                          }
        if (temNumeros.find() == false){
            erroRegistro = "Essa senha não possuí caracteres numéricos! Formule outra que possua.";
            request.getSession().setAttribute("erroRegistro", erroRegistro);
                                       }
        if (temEspeciais.find() == false){
            erroRegistro = "Essa senha não possuí caracteres numéricos! Formule outra que possua.";
            request.getSession().setAttribute("erroRegistro", erroRegistro);
                                         }
        
        if(senha.equals(login)){
            erroRegistro = "A senha deve ser diferente do login!";
            request.getSession().setAttribute("erroRegistro", erroRegistro);                   
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

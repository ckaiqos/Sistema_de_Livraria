/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import controle.Cadastro;
import controle.Controle;
import entidades.*;
import java.util.Iterator;
import java.util.List;
import java.io.IOException;
import java.math.BigInteger;  
import java.security.MessageDigest;  
import java.security.NoSuchAlgorithmException;  
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
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
        String erroRegistro = "";  
        String resp = "registro.jsp";
        //Endereco endereco = new Endereco();    
        //Telefone telefone = new Telefone();
        //Conta conta = new Conta(); 
       // List<Conta> listaContas;
        
        String categoria = request.getParameter("categoria");
        String nome = request.getParameter("nome");
        String razSoc = request.getParameter("razSoc");
        String CPF = request.getParameter("CPF");
        String CNPJ = request.getParameter("CNPJ");
        String tele = request.getParameter("tele"); 
        String UF = request.getParameter("UF");
        String cidade = (String) request.getSession().getAttribute("cidade");
        String bairro = request.getParameter("bairro");
        String tipoLog = request.getParameter("tipoLog");   
        String log = request.getParameter("log"); 
        String num = request.getParameter("num");
        String CEP = request.getParameter("CEP");
        String login = request.getParameter("login");
        String senha = request.getParameter("senha");
        
        log = tipoLog + ' ' + log;
        
        if(categoria.equals("cliente")){CPF = CPF.replaceAll("[^\\d]", "");}
        else if(categoria.equals("fornecedor")){CNPJ = CNPJ.replaceAll("[^\\d]", "");}
        tele = tele.replaceAll("[^\\d]", "");
        CEP = CEP.replaceAll("[^\\d]", ""); 
        
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
                                erroRegistro += "ERRO: Essa conta já existe! Use outro nome de usuário.";
                                request.getSession().setAttribute("erroRegistro", erroRegistro);
                                resp = "registro.jsp";
                                response.sendRedirect(resp);
        }}
           i = -1;                 
        while(itef.hasNext()){
                            i++;
                            Fornecedor fornecedor = new Fornecedor();
                            fornecedor = itef.next();
                            if(fornecedor.getLogin().equals(login)){
                                erroRegistro += "ERRO: Essa conta já existe! Use outro nome de usuário.";
                                request.getSession().setAttribute("erroRegistro", erroRegistro);
                                resp = "registro.jsp";
                                response.sendRedirect(resp);
                            }
        }
        i = -1;
        while(itec.hasNext()){
                            i++;
                            Cliente cliente = new Cliente();
                            cliente = itec.next();
                            if(cliente.getLogin().equals(login)){
                                erroRegistro += "ERRO: Essa conta já existe! Use outro nome de usuário.";
                                request.getSession().setAttribute("erroRegistro", erroRegistro);
                                resp = "registro.jsp";
                                response.sendRedirect(resp);
                            }   
                            }
        
        /*request.getSession().setAttribute("listaContas", con.consultarContas());
        listaContas = (List) request.getSession().getAttribute("listaContas");
        
        
        Iterator<Conta> ite = listaContas.iterator();
        int i = -1;
        
        
        
        while(ite.hasNext()){
                            i++;
                            conta = ite.next();
                            if(conta.getLogin().equals(login)){
                                
                                erroRegistro += "ERRO: Essa conta já existe! Use outro nome de usuário.";
                                request.getSession().setAttribute("erroRegistro", erroRegistro);
                                resp = "registro.jsp";
                                response.sendRedirect(resp);
                                                              }} */
         
        
        if(senha.length() < 10){
            if(erroRegistro.isEmpty()){
                erroRegistro += "ERRO: Essa senha é muito curta! Use pelo menos 10 caracteres.";
                request.getSession().setAttribute("erroRegistro", erroRegistro);
                resp = "registro.jsp";
                response.sendRedirect(resp);
                                      }
            
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
            if(erroRegistro.isEmpty()){erroRegistro = "ERRO: Essa senha não possuí caracteres maiúsculos! Formule outra que possua.";
            request.getSession().setAttribute("erroRegistro", erroRegistro);
            resp = "registro.jsp";
            response.sendRedirect(resp);}
                                         }
        
        if (temMinusculas.find() == false){
            if(erroRegistro.isEmpty()){erroRegistro = "ERRO: Essa senha não possuí caracteres minúsculos! Formule outra que possua.";
            request.getSession().setAttribute("erroRegistro", erroRegistro);
            resp = "registro.jsp";
            response.sendRedirect(resp);}
                                          }
        if (temNumeros.find() == false){
            if(erroRegistro.isEmpty()){erroRegistro = "ERRO: Essa senha não possuí caracteres numéricos! Formule outra que possua.";
            request.getSession().setAttribute("erroRegistro", erroRegistro);
            resp = "registro.jsp";
            response.sendRedirect(resp);}
                                       }
        if (temEspeciais.find() == false){
            if(erroRegistro.isEmpty()){erroRegistro = "ERRO: Essa senha não possuí caracteres especiais! Formule outra que possua.";
            request.getSession().setAttribute("erroRegistro", erroRegistro);
            resp = "registro.jsp";
            response.sendRedirect(resp);}
                                         }
        
        if(senha.equals(login)){
            if(erroRegistro.isEmpty()){erroRegistro = "ERRO: A senha deve ser diferente do login!";
            request.getSession().setAttribute("erroRegistro", erroRegistro);
            resp = "registro.jsp";
            response.sendRedirect(resp);}                   
                               }
        
        if("cliente".equals(categoria) && erroRegistro.isEmpty()){
   
            try {
                MessageDigest md = MessageDigest.getInstance("MD5");
                byte[] messageDigest = md.digest(senha.getBytes());  
                BigInteger no = new BigInteger(1, messageDigest);  
                senha = no.toString(16);  
                while (senha.length() < 32){  
                   senha = "0" + senha;  
                                           }  
            } catch (NoSuchAlgorithmException ex) {
                Logger.getLogger(Registro.class.getName()).log(Level.SEVERE, null, ex);
            }
            
            Cliente cliente = new Cliente();
            
            cliente.setNomeCliente(nome);
            cliente.setCpf(CPF);
            cliente.setLogin(login);
            cliente.setSenha(senha);
         
            cliente.setUf(UF);
            cliente.setCidade(cidade);
            cliente.setBairro(bairro);
            cliente.setCep(CEP);
            cliente.setLogradouro(log);
            cliente.setNumero(num);
            
            cliente.setNumTelefone(tele);
            
            con.salvarCliente(cliente);
            
            String sucesso = "Você criou uma conta com sucesso!"; 
            
            request.getSession().setAttribute("sucessoRegistro", sucesso);
            resp = "registro.jsp";
            response.sendRedirect(resp);
            
                                       } 
        
        else if("fornecedor".equals(categoria) && erroRegistro.isEmpty()){ 
            
            try {
                MessageDigest md = MessageDigest.getInstance("MD5");
                byte[] messageDigest = md.digest(senha.getBytes());  
                BigInteger no = new BigInteger(1, messageDigest);  
                senha = no.toString(16);  
                while (senha.length() < 32){  
                   senha = "0" + senha;  
                                           }  
            } catch (NoSuchAlgorithmException ex) {
                Logger.getLogger(Registro.class.getName()).log(Level.SEVERE, null, ex);
            }
            
            Fornecedor fornecedor = new Fornecedor();
            
            fornecedor.setNomeFornecedor(razSoc);
            fornecedor.setCnpj(CNPJ);
            
            fornecedor.setLogin(login);
            fornecedor.setSenha(senha);
            
            fornecedor.setUf(UF);
            fornecedor.setCidade(cidade);
            fornecedor.setBairro(bairro);
            fornecedor.setCep(CEP);
            fornecedor.setLogradouro(login);
            fornecedor.setNumero(num);
            
            fornecedor.setNumTelefone(tele);
            
            con.salvarFornecedor(fornecedor);
            
            String sucesso = "Você criou uma conta com sucesso!"; 
            
            request.getSession().setAttribute("sucessoRegistro", sucesso);
            resp = "registro.jsp";
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

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import java.io.IOException;
import entidades.*;
import controle.Controle;
import java.io.ByteArrayOutputStream;
import java.io.FileInputStream;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.Part;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.charset.StandardCharsets;
import java.util.logging.Level;
import java.util.logging.Logger;

@MultipartConfig(
        fileSizeThreshold   = 1024 * 1024 * 1,  // 1 MB
        maxFileSize         = 1024 * 1024 * 10, // 10 MB
        maxRequestSize      = 1024 * 1024 * 15, // 15 MB
        location            = "C:/Temp"
)

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
     *
     * @param <T>
     * @param input
     * @param cl
     * @return
     */
    protected static <T> T transform(Part input) throws IOException, ClassNotFoundException{ 
         T retValue = null;
         InputStream inStream = input.getInputStream();
         ByteArrayOutputStream ouStream = new ByteArrayOutputStream();
         byte[] buffer = new byte[4096];
         int bytesRead = -1;  
         while ((bytesRead = inStream.read(buffer)) != -1) {
                 ouStream.write(buffer, 0, bytesRead);
                                                           }
        
         retValue = (T) new String(ouStream.toByteArray(), StandardCharsets.UTF_8);
         return retValue;
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
         String path = getServletContext().getInitParameter("file-upload");
         
         String erroRegistro = "";  
         String resp = "fornecimento.jsp";
         Livros livro;
         Imgslivros img = new Imgslivros();
         Fornecedor fornecedorLogado = request.getSession().getAttribute("fornecedorLogado") != null? (Fornecedor) request.getSession().getAttribute("fornecedorLogado"): new Fornecedor();
         List<Livros> listaLivros;
         
         String qntDisp;
         String nome;
         String autor;
         String preco;  
         String ISBN;  
         String ano;
         String edicao;
         String genero;
        try {
            nome = Fornecimento.<String>transform(request.getPart("nome"));
            autor = Fornecimento.<String>transform(request.getPart("autor"));
            preco = Fornecimento.<String>transform(request.getPart("preco"));
            ISBN = Fornecimento.<String>transform(request.getPart("ISBN"));
            ano = Fornecimento.<String>transform(request.getPart("ano"));
            edicao = Fornecimento.<String>transform(request.getPart("edicao"));
            genero = Fornecimento.<String>transform(request.getPart("genero"));
            qntDisp = Fornecimento.<String>transform(request.getPart("qntDisp"));
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Fornecimento.class.getName()).log(Level.SEVERE, null, ex);
            nome = "Ixe!";
            autor = "Ixe!";
            preco = "Ixe!"; 
            ISBN = "Ixe!";
            ano = "Ixe!";
            edicao = "Ixe!";  
            genero = "Ixe!";
            qntDisp = "Ixe!";
        }
         String proprietario = fornecedorLogado.getNomeFornecedor();
         Part file = request.getPart("file").getContentType() != null ? request.getPart("file"): null;
         String nomeArquivo = file != null? file.getSubmittedFileName(): null;
         
         
        
        
            ISBN = ISBN.replaceAll("[^\\d]", "");
            preco = preco.replaceAll(",", ".");
            preco = preco.replaceAll("[^\\d.]", "");
            String[] expected = nomeArquivo.split("\\\\\\\\");
            nomeArquivo = expected[expected.length-1];
            
            
            float pref = Float.parseFloat(preco);
            
            int i = 0;
            
            Integer qntExemplar = 0;
            //while(ite.hasNext()){
            
            //livro = ite.next();
            //if(livro.getIsbn().equals(ISBN_Str)){qntExemplar++;}
            
            //}
            /*
            if(file != null){
            file.write(path + nomeArquivo);
            System.out.println("Sucesso ao inserir arquivo!");
            InputStream inStream = file.getInputStream();
            ByteArrayOutputStream ouStream = new ByteArrayOutputStream();
            byte[] buffer = new byte[4096];
            int bytesRead = -1;
            
            while ((bytesRead = inStream.read(buffer)) != -1) {
            ouStream.write(buffer, 0, bytesRead);
            }
            
            byte[] bytesImagem = ouStream.toByteArray();
            
            
            
            img.setImgNomTxt(nomeArquivo);
            img.setImgPathTxt(path);
            img.setImgFile(bytesImagem);
            
            System.out.println("Sucesso ao inserir atributos!");
            
            inStream.close();
            ouStream.close();
            
            con.salvarImg(img);
            
            }
            else{img = null;}
            
            while(i<qntDisp){
            livro = new Livros();
            i++;
            livro.setNomeLivro(nomeStr);
            livro.setAutor(autorStr);
            livro.setPreco(pref);
            livro.setExemplar(i+qntExemplar);
            livro.setIsbn(ISBN_Str);
            livro.setAno(anoStr);
            livro.setEdicao(edicaoStr);
            livro.setGenero(generoStr);
            livro.setProprietario(proprietario);
            livro.setImgslivros(img);
            con.salvarLivro(livro);
            }
            resp = "fornecimento.jsp";
            String sucesso = "Você registrou o(s) livro(s) com sucesso!";
            request.getSession().setAttribute("sucessoRegistroLivro", sucesso);
            response.sendRedirect(resp);
            
            livro.setNomeLivro(nome);
            livro.setAutor(autor);
            livro.setPreco(pref);
            livro.setIsbn(ISBN_Str);
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

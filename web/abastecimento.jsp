<%-- 
    Document   : abastecimento
    Created on : 07/06/2023, 08:12:04
    Author     : windows
--%>
<%
    Controle con = new Controle(); 
    Integer i;
    List listaLivros = con.consultarLivros();
    LinkedList<Livros> livrosConsultados = new LinkedList<Livros>();
    Livros livro;  
    Iterator<Livros> ite = listaLivros.iterator();
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "entidades.*"%>  
<%@page import = "controle.*"%>      
<%@page import = "java.util.List"%> 
<%@page import = "java.util.LinkedList"%> 
<%@page import = "java.util.Iterator"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="abastecimento.css"/>
        <title>Admin</title>
    </head>
    <body>
        <h1>BELLES | LETRES</h1>
        <h2 class = "txt">Livros oferecidos</h2>
    <table>    
    <thead>
        <tr class = "txt">
            <th>Título</th>
            <th>Autor</th>
            <th>Edição</th>
            <th>ISBN</th>   
        </tr>
    </thead>
    
    
    <tbody>
    <% 
      while(ite.hasNext()){   
          livro = ite.next();
          i = 0; //conta exemplares idênticos
          if(livro.getProprietario().equals("Belles Letres")){continue;} //verifica se livro não foi comprado
          else{ //se for o caso... 
              Iterator<Livros> itec = livrosConsultados.iterator(); 
              if(livrosConsultados.isEmpty()){livrosConsultados.add(livro);} //se for o primeiro elemento consultado..
              
              //se não for
              else{
                  while(itec.hasNext()){ //veja que livros já foram consultados
                    if(itec.next().getIsbn().equals(livro.getIsbn())){ //se houver exemplar idêntico...
                        i++;
                        break; 
                                                                     }
                                       }          
                   if(i>0){continue;}
                  }
          
                                
    %>    
    <tr>
        <td><%=livro.getNomeLivro()%></td>
        <td><%=livro.getAutor()%></td>
        <td><%=livro.getEdicao()%></td>
        <td><%=livro.getIsbn()%></td>
    </tr>
    <%}}%>
    </tbody>    
    </table>
    </body>
</html>

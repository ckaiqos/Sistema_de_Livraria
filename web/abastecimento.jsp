<%-- 
    Document   : abastecimento
    Created on : 07/06/2023, 08:12:04
    Author     : windows
--%>
<%
    Controle con = new Controle(); 
    Integer i;
    Integer z = 0;
    Integer qntExemplar;
    List listaLivros = con.consultarLivros();
    session.setAttribute("listaLivros", listaLivros);
    String sucessoCompra = session.getAttribute("sucessoCompra") != null? (String) session.getAttribute("sucessoCompra"): null;
    //List listaLivrosISBN = con.consultarLivros();
    LinkedList<Livros> livrosConsultados = new LinkedList<Livros>();
    Livros livro;  
    Iterator<Livros> ite = listaLivros.iterator();
    //Iterator<Livros> itel = listaLivrosISBN.iterator();
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
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
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
            <th>Preço</th>
            <th>Exemplares</th>
            <th></th>
            <th></th>
        </tr>
    </thead>
    
    
    <tbody>
    <% 
      while(ite.hasNext()){   
          livro = ite.next();
          qntExemplar = 0;
          i = 0; 
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
                   
                   else{livrosConsultados.add(livro);} //se não houver exemplar idêntico
                  }
              List listaLivrosISBN = con.consultarLivros();
              Iterator<Livros> itel = listaLivrosISBN.iterator();
              while(itel.hasNext()){   
                  if(itel.next().getIsbn().equals(livro.getIsbn())){qntExemplar++;}
                                   }

              String precos = String.valueOf(livro.getPreco());
              precos = precos.replace(".", ",");
              if(precos.length() == 4){precos = precos + '0';}
              precos = "R$ " + precos; 
              z++;
          
                                
    %>    
    <tr>
        <td><%=livro.getNomeLivro()%></td>
        <td><%=livro.getAutor()%></td>
        <td><%=livro.getEdicao()%></td>
        <td><%=livro.getIsbn()%></td>
        <script>console.log("<%=precos%>");</script>
        <td><%=precos%></td>
        <td><%=qntExemplar%></td>
        <td><a href = "Abastecimento?pedido=<%=livro.getIsbn()%>">Comprar</a></td>  
        <td>Quantia: <input type="number" value="1" min="1" max="<%=qntExemplar%>" onchange="passar(this.id)" name="qntDesej" class="qntDesej" id = "input<%=z%>" style="visibility: visible;"></td>
    </tr>
    <%}}%>
    </tbody>    
    </table>
    <p id = "status"> </p>
    <script>  
        
         <%if(sucessoCompra != null){%> 
                    document.getElementById("status").style.visibility = "visible";
                    console.log("<%=sucessoCompra%>");
                    document.getElementById("status").innerHTML = "<%=sucessoCompra%> ";
                    var a = document.createElement('a');
                    var linkText = document.createTextNode("Clique aqui para voltar à tela de administrador.");
                    a.appendChild(linkText);
                    a.href = "telaAdministrador.jsp";
                    $(a).attr("id", "link");
                    $(a).attr("text-decoration", "underline");
                    a.style.color = "green";
                    document.getElementById("status").appendChild(a);
                    document.getElementById("status").style.color = "green";
                    <%session.invalidate();%>       
                        <%}%>
        
        function passar(id){
            console.log(id); 
            var qnt = $("#" + id).val();  
            console.log(qnt);
            $.post("ajaxQuantia", {qntDesej: qnt}, function(){console.log("Sucesso");});
                         }
    </script>
    </body>
</html>

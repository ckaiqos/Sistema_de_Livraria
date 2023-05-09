<%-- 
    Document   : index
    Created on : 04/05/2023, 14:34:58
    Author     : windows
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javax.servlet.ServletContext"%>

<%
    request.getSession(); 
    boolean erroLogin = (Boolean) session.getAttribute("erroLogin");
%>

<!DOCTYPE html>
<html>
    <head>
        <title>Login</title>
        <meta charset="UTF-8">
        <link rel="stylesheet" type="text/css" href="index.css"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <div class = "menu">
            <form id="formLogin" action="Login" method="POST">
            <table border = 0>
                
            <tr> 
             <td class="right">Login:     </td>
             <td><input id="idLogin" type="text" name="login"/></td>
            </tr> 
            
            </table>   
            <table>
                <br>
            <tr> 
             <td class="right">Senha: </td>
             <td><input id="idSenha" type="password" name="senha"/></td>
            </tr> 
            </table>
            <br>
            
            <tr>
            <button type="submit" id="left">Entrar</button>
            </tr>
            
            <p id = "erro">Erro de login! Seu login ou senha estão incorretos. </p>
            
            </form>
            
            <script>
                
                if(<%=erroLogin%>){
                    document.getElementById("erro").style.color = "red";
                    document.getElementById("myP").style.visibility = "visible";
                                  }
                                  
                else              {
                    document.getElementById("myP").style.visibility = "hidden";
                                  }                  
                                  
            </script>
            
        </div>
    </body>
</html>

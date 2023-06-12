<%-- 
    Document   : index
    Created on : 04/05/2023, 14:34:58
    Author     : windows
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javax.servlet.ServletContext"%>

<%
    boolean erroLogin = session.getAttribute("erroLogin") != null? (Boolean) session.getAttribute("erroLogin"): false;
%>
<!DOCTYPE html>
<html>
    <head>
        <title>Login</title>
        <meta charset="UTF-8">
        <link rel="stylesheet" type="text/css" href="login.css"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        
        <h1>BELLES | LETRES</h1>
        
        <div class = "menu">
            <form id="formLogin" action="Login" method="POST">
            <table border = 0>
                
            <tr id="idLogin"> 
             <td id = "txtLogin">Login:     </td>
             <td id = "inputLogin" ><input type="text" name="login"/></td>
            </tr> 
            
            </table>   
            <table>
                <br><br><br><br><br>
            <tr id="idSenha"> 
             <td id="txtPass">Senha: </td>
             <td id = "inputPass"><input type="password" name="senha"/></td>
            </tr> 
            </table>
            <br>
            
            <tr>
            <button type="submit" id="btnEntrar">Entrar</button>
            </tr>
            
            <!--<a id="btnRegistro" href="registro.jsp" class="button">Cadastro</a>-->

            
            <p id = "erro">Erro de entrada! Seu login ou senha estão incorretos. </p>
            
            </form>
            
            <form action="registro.jsp"><input id ="btnRegistro" type="submit" value="Cadastro"/> </form>
            
             <script>
                    document.getElementById("erro").style.color = "red";
                    document.getElementById("erro").style.visibility = "hidden";
                                  
                                  
                 <%if(erroLogin == true){%>              
                    document.getElementById("erro").style.visibility = "visible";
                    <%session.invalidate();%>
     <%}%>
                                                    
                                  
            </script> 
            
        </div>
    </body>
</html>
        

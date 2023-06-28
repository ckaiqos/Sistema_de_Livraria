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
            <div class = "ptCima"> 
            <form id="formLogin" action="Login" method="POST">
             
             
             <p id = "txtLogin">Login:     </p>
             <input type="text" name="login" id = "inputLogin"/>
             
             <br><br><br>
             
             <p id="txtPass">Senha: </p>
             <input type="password" name="senha" id = "inputPass"/>
            
                
            </div>
            
            
            <div class = "ptBaixo">    
            
            
            
            
                
            <!--<a id="btnRegistro" href="registro.jsp" class="button">Cadastro</a>-->

            
            
            
            </form>
            <br><br>
     
            <form action="registro.jsp" id = "formRegistro"><input id ="btnRegistro" type="submit" value="Cadastro"/> </form>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <button type="submit" id="btnEntrar" form = "formLogin">Entrar</button>   
            </div>   
            <p id = "erro">Erro de entrada! Seu login ou senha estão incorretos. </p>
            </div>
            
           <!-- <button type="submit" id="btnEntrar" form = "formLogin">Entrar</button>    
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <form action="registro.jsp" id = "formRegistro"><input id ="btnRegistro" type="submit" value="Cadastro"/> </form>
            </div>   
            <p id = "erro">Erro de entrada! Seu login ou senha estão incorretos. </p>
            </div> -->
              <script>
                    document.getElementById("erro").style.color = "red";
                    document.getElementById("erro").style.display = "none";
                                  
                                  
                 <%if(erroLogin == true){%>              
                    document.getElementById("erro").style.display = "block";
                    <%session.invalidate();%>
     <%}%>
                                                    
                                  
            </script>
    </body>
</html>
        

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
        <link rel="stylesheet" type="text/css" href="index.css"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <style>
      /* Estilo para centralizar o painel de login */
      
      h1{
          position: absolute;
          top: 50px;
          color: #FFEA00;
          font-size: 40px;
          font-family: "Garamond", serif;
          
            
      }
      
      
      body {
        display: flex;
        background-color: #202020;
        justify-content: center;
        align-items: center;
        height: 100vh;
      }
      
      #formLogin {
        width: 600px;
        padding: 20px;
        background-color: #202020;
        border: 1px solid grey;
        border-radius: 5px;
        text-align: center;
      }
      
      label {
        
      }
      
      
      input[type="text"],
      input[type="password"] {
        background-color: #B0B0B0;
        color: #FFEA00;
        padding: 5px;
        border-radius: 5px;
        border: 1px solid black;
        margin-bottom: 10px;
        
      }
      
      #idLogin{
          position: absolute;  
          right: 555px;
      }
      #idSenha{
          position: absolute;   
          top: 300px;
          right: 555px;
      }
      

      
      button {
        background-color: black;
        color: #FFEA00;
        position: absolute;   
        top: 360px;
        font: "Times New Roman";
        right: 615px;
        padding: 10px 20px;
        cursor: pointer;
        border-radius: 6px;
        text-align: center;
      }
      #btnEntrar {
       
      }
      
      #erro{
          position: relative;   
          top: -7px;  
          right: -10px;
      }
      
      #btnEntrar:hover{
       
      }
      
      #txtLogin{
          position: relative;
          top: -5px;
          color: #FFEA00;
      }
      
      #txtPass{
          position: relative;
          top: -5px;
          color: #FFEA00;
      }
      
      
    </style>
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
            
            <p id = "erro">Erro de entrada! Seu login ou senha estão incorretos. </p>
            
            </form>
            
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
        

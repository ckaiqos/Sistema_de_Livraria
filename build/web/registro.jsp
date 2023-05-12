<%-- 
    Document   : registro
    Created on : 12/05/2023, 09:35:02
    Author     : windows
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="registro.css"/>
        <title>JSP Page</title>
    </head>
    <body>
        
        <h1>BELLES | LETRES</h1>
        
        <div class = "menu">
            
            <form id="formLogin" action="Login" method="POST">
                <table border = 0>
                    
            <tr id="tr1"> 
             <td class ="txt" id = "txtCat">Você é: </td>
             <td id = "inputCat" >
                 
                 <select name="categoria" id="categorias">
                     
                 <option value="blank">...</option>    
                 <option value="cliente">Cliente</option>
                 <option value="fornecedor">Fornecedor</option>
                 
                 
                </select>
                 
             </td>
            </tr>
            
            <tr class = "resto" id = "tr2">
            <td class = "txt" id = "txtLogin">Teste</td>
            <td id = "inputLogin" ><input type="text" name="login"/></td>    
            </tr>
                    
                </table>
            </form>
            
            <script>
              let limit = document.getElementsByClassName("resto").length - 1;
              for(let i = 0; i < limit; i++){
              document.getElementsByClassName("resto")[i].style.visibility="hidden";
          }
            </script> 
            
        </div> 
    </body>
</html>

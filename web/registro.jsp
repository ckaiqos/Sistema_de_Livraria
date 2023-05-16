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
             <td id = "inputCat" class = "input">
                 
                 <select name="categoria" id="categorias" onchange="habilitar()">
                     
                 <option value="blank">...</option>    
                 <option value="cliente">Cliente</option>
                 <option value="fornecedor">Fornecedor</option>
                 
                 
                </select>
                 
             </td>
            </tr>
            
            <tr class = "resto" id = "tr2CPF">
            <td class = "txt" id = "txtCPF">CPF: </td>
            <td id = "inputCPF" class = "input"><input type="text" name="CPF"/></td>    
            </tr>
            
            <tr class = "resto" id = "tr2CNPJ">
            <td class = "txt" id = "txtCNPJ">CNPJ: </td>
            <td id = "inputCNPJ" class ="input"><input type="text" name="CNPJ"/></td>    
            </tr>
                    
                </table>
            </form>
            
            <script>
              let limitTxt = document.getElementsByClassName("txt").length-1;
              let limitInput = document.getElementsByClassName("input").length-1;
              for(let i = 1; i <= limitTxt; i++){
              document.getElementsByClassName("txt")[i].style.visibility="hidden";
                                               }
              for(let i = 1; i <= limitInput; i++){
              document.getElementsByClassName("input")[i].style.visibility="hidden";
                                               }
              
              function habilitar() {
                var opcao = document.getElementById("categorias").value;
                if(opcao !== "blank"){
                  
                  if(opcao === "cliente"){ 
                     document.getElementsByClassName("txt")[1].style.visibility = "visible";  
                     document.getElementsByClassName("input")[1].style.visibility = "visible";
                     document.getElementsByClassName("txt")[2].style.visibility = "hidden"; 
                     document.getElementsByClassName("input")[2].style.visibility = "hidden"; 
                     
                     for(let i = 3; i <= limitTxt; i++){ 
                         document.getElementsByClassName("txt")[i].style.visibility = "visible";
                                                       }
                                                       }
                     
                     for(let i = 3; i <= limitInput; i++){
                         document.getElementsByClassName("input")[i].style.visibility = "visible";
                                                         }
                     
                  if (opcao === "fornecedor"){  
                      document.getElementsByClassName("txt")[2].style.visibility = "visible";  
                      document.getElementsByClassName("input")[2].style.visibility = "visible";
                      document.getElementsByClassName("txt")[1].style.visibility = "hidden"; 
                      document.getElementsByClassName("input")[1].style.visibility = "hidden"; 
                      
                      for(let i = 3; i <= limitTxt; i++){ 
                         document.getElementsByClassName("txt")[i].style.visibility = "visible";
                                                       }
                                                       }
                     
                     for(let i = 3; i <= limitInput; i++){
                         document.getElementsByClassName("input")[i].style.visibility = "visible";
                                                         }
                      
                                             }
                                         }
              
              
              
              
                                               
              
          
            </script> 
            
        </div> 
    </body>
</html>

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
            <td class = "txt" id = "txtDoc">CPF: </td>
            <td id = "inputCPF" class = "input"><input type="text" name="CPF"/></td>    
            </tr>
            
            <tr class = "resto" id = "tr2CNPJ">
            <td class = "txt" id = "txtDoc">CNPJ: </td>
            <td id = "inputCNPJ" class ="input"><input type="text" name="CNPJ"/></td>    
            </tr>
                    
                </table>
            </form>
            
            <script>
              let limitTxt = document.getElementsByClassName("txt").length;
              let limitInput = document.getElementsByClassName("input").length;
              for(let i = 1; i < limitTxt; i++){
              document.getElementsByClassName("txt")[i].style.visibility="hidden";
                                               }
              for(let i = 1; i < limitInput; i++){
              document.getElementsByClassName("input")[i].style.visibility="hidden";
                                               }
              
              function habilitar() {
                var opcao = document.getElementById("categorias").value;
                if(opcao !== "blank"){
                  
                  if(opcao === "cliente"){ 
                        console.log(opcao);
                        for(let i = 0; i < limit; i++){
                        document.getElementsByClassName("txt")[i].style.visibility="visible";
                                            }
                                         }
                  
                  if (opcao === "fornecedor"){  
                      document.getElementsByClassName("txt")[0].style.visibility="visible";
                      console.log(opcao);
                      for(let i = 2; i < limit; i++){
                        document.getElementsByClassName("txt")[i].style.visibility="visible";
                                            }
                                             }
                                         }}
              
              
              
              
                                               
              
          
            </script> 
            
        </div> 
    </body>
</html>

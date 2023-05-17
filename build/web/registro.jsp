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
        
        
            
            <form id="formLogin" action="Login" method="POST">
                <table border = 0>
            <div class = "container">
                    
            <div id =" child1">        
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
            </div>
            
            <div id = "child2">        
            <tr class = "resto" id = "tr2CPF">
            <td class = "txt" id = "txtCPF">CPF: </td>
            <td id = "inputCPF" class = "input"><input type="text" name="CPF" id="CPF" maxlength="14" onkeyup="mascaraCPF()"/></td>    
            </tr>
            </div> 
             <div id = "child3">
                 
            <tr class = "resto" id = "tr2CNPJ">
            <td class = "txt" id = "txtCNPJ">CNPJ: </td>
            <td id = "inputCNPJ" class ="input"><input type="text" id ="CNPJ" maxlength="18" onkeyup="mascaraCNPJ()" name="CNPJ"/></td>  
            
            <tr class = "resto" id ="tr3Nome">
            <td class = "txt" id = "txtNome">Nome: </td> 
            <td id = "inputNome" class = "input"><input type="text" id = "nome" name = "nome"/></td>
            
            <tr class = "resto" id = "tr4Tele">
            <td class = "txt" id = "txtTele">Telefone: </td>   
            <td id = "inputTele" class = "input"><input type = "text" id= "tele" name = "tele" maxlength="" onkeyup="mascaraTele()"/></td> 
            </tr>
            
            </tr>
            
            </tr>
             </div>   
                
            </div> 
                    
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
                     document.getElementById("txtNome").innerHTML = "Nome: ";
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
                                                       
                     
                     for(let i = 3; i <= limitInput; i++){
                         document.getElementsByClassName("input")[i].style.visibility = "visible";
                                                         } 
                    
                    document.getElementById("txtNome").innerHTML = "Razão social: ";
                }
                      
                                             }
                else{for(let i = 1; i <= limitTxt; i++){
              document.getElementsByClassName("txt")[i].style.visibility="hidden";
                                               }
              for(let i = 1; i <= limitInput; i++){
              document.getElementsByClassName("input")[i].style.visibility="hidden";
                                               }}
                                         }
              function mascaraCPF(){
                  var CPF = document.getElementById('CPF');
                  if(CPF.value.length == 3 || CPF.value.length == 7){CPF.value += ".";}
                  else if (CPF.value.length == 11){CPF.value += "-";}
                                   }
              
              function mascaraCNPJ(){ 
                  var CNPJ = document.getElementById('CNPJ');
                  
                  if (CNPJ.value.length == 2 || CNPJ.value.length == 6){CNPJ.value += ".";}
                  else if(CNPJ.value.length == 10){CNPJ.value += "/"}
                  
                  else if(CNPJ.value.length == 15){CNPJ.value += "-"}
                  
                                    }
               
               function mascaraTele(){ 
                   var tele = document.getElementById('tele');
                   if(tele.value.length == 1){tele.value = "(" + tele.value;} //replace seria bom
                   if(tele.value.length == 3){tele.value += ") ";}
                   if(tele.value.length ==10){tele.value += "-";}
                                     }
              
              
              
              
                                               
              
          
            </script> 
            
        </div> 
    </body>
</html>

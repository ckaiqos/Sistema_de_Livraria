<%-- 
    Document   : registro
    Created on : 12/05/2023, 09:35:02
    Author     : windows
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String erroRegistro = session.getAttribute("erroRegistro") != null? (String) session.getAttribute("erroRegistro"): null;
    String sucessoRegistro = session.getAttribute("sucessoRegistro") != null? (String) session.getAttribute("sucessoRegistro"): null;
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
        <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link rel="stylesheet" type="text/css" href="registro.css"/>
        <title>JSP Page</title>
    </head>
    <body>
        
        <h1>BELLES | LETRES</h1>
        
        
            
            <form id="formCadastro" action="Registro" method="POST">
                <table border = 0>
                    <tbody id = "tbody"> 
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
            
            <tr class = "resto" id = "tr4Tele">
            <td class = "txt" id = "txtTele">Telefone: </td>   
            <td id = "inputTele" class = "input"><input type = "text" id= "tele" name = "tele" maxlength="15" onkeyup="mascaraTele()"/></td> 
            </tr>
            
            <tr class = "resto" id = "tr5UF">
            <td class = "txt"  id = "txtUF">Estado: </td>  
            <td id = "inputUF" class = "input">
            <select id = "estados" name = "UF">
            <option value = "blank">...</option>
            </select>
            </td> 
            </tr>
            
            <tr class = "resto" id = "tr6cidade">
            <td class = "txt"  id = "txtCidade">Cidade: </td>  
            <td id = "inputCidade" class = "input">
            <select id = "cidades" name = "cidade" disabled>
            <option value = "">Selecione um estado...</option>
            </select>
            </td> 
            </tr>
            
            <tr class = "resto" id = "tr7Bairro">
            <td class = "txt" id = "txtBairro">Bairro: </td>    
            <td id = "inputBairro" class = "input"><input type = "text" id = "bairro" name = "bairro"</td>    
            </tr>
            
            <tr class="resto" id ="tr8TipoLog">    
            <td class ="txt" id = "txtTipoLog">Tipo de logradouro: </td>
            <td id = "inputTiposLog" class = "input">
                                <select id="tiposLog" name = "tipoLog">
		                <option value="blank">...</option>
				<option value="Avenida">Avenida</option>
				<option value="Rua">Rua</option>
				<option value="Alameda">Alameda</option>
				<option value="Estrada">Estrada</option>
				<option value="Rodovia">Rodovia</option>
				<option value="Quadra" >Quadra</option>
				<option value="Travessa">Travessa</option>
				<option value="Residencial">Residencial</option>
				<option value="Aeroporto" >Aeroporto</option>
				<option value="Área">Área</option>
                                <option value="Campo">Campo</option>
				<option value="Chácara" >Chácara</option>
				<option value="Colônia" >Colônia</option>
				<option value="Condomínio">Condomínio</option>
				<option value="Conjunto">Conjunto</option>
				<option value="Distrito">Distrito</option>
				<option value="Esplanada">Esplanada</option>		
				<option value="Estação">Estação</option>
				<option value="Favela">Favela</option>
				<option value="Fazenda">Fazenda</option>
				<option value="Feira">Feira</option>
				<option value="Jardim">Jardim</option>
				<option value="Ladeira">Ladeira</option>
				<option value="Lago">Lago</option>
				<option value="Lagoa">Lagoa</option>
				<option value="Largo">Largo</option>
				<option value="Loteamento">Loteamento</option>
				<option value="Morro">Morro</option>
				<option value="Núcleo">Núcleo</option>
				<option value="Parque">Parque</option>
				<option value="Passarela">Passarela</option>
				<option value="Pátio">Pátio</option>
				<option value="Praça">Praça</option>
				<option value="Recanto">Recanto</option>
				<option value="Setor">Setor</option>
				<option value="Sítio">Sítio</option>
				<option value="Trecho">Trecho</option>
				<option value="Trevo">Trevo</option>
				<option value="Vale">Vale</option>
				<option value="Vereda">Vereda</option>
				<option value="Via">Via</option>
				<option value="Viaduto">Viaduto</option>
				<option value="Viela">Viela</option>
				<option value="Vila">Vila</option>
				<option value="outros">Outros</option>
                                </select>   
             </td>
             
            <tr class = "resto" id = "tr9Logradouro">
            <td class = "txt" id = "txtLogradouro">Logradouro: </td>    
            <td id = "inputLog" class = "input"><input type = "text" id = "log" name = "log"</td>    
            </tr>
            
            <tr class = "resto" id = "tr10num">
            <td class = "txt" id = "txtNum">Número: </td>    
            <td id = "inputNum" class = "input"><input type = "text" id = "num" name = "num"</td>    
            </tr>
            
            <tr class = "resto" id = "tr11CEP">
            <td class = "txt" id = "txtCEP">CEP: </td>    
            <td id = "inputCEP" class = "input"><input type = "text" id = "CEP" maxlength ="9"  name = "CEP" onkeyup="mascaraCEP()"</td>    
            </tr> 
            
            <tr class = "resto" id = "tr12login">
            <td class = "txt" id = "txtLogin">Login: </td>    
            <td id = "inputLogin" class = "input"><input type = "text" id = "login" name = "login"</td>    
            </tr>
            
            <tr class = "resto" id = "tr13senha">
            <td class = "txt" id = "txtSenha">Senha: </td>    
            <td id = "inputSenha" class = "input"><input type = "password" id = "senha" name = "senha"</td>    
            </tr> 
            
            <tr class = "resto" id = "tr14botao">
            <td id = "txtCadastrar" class = "txt">Cadastro: </td>
            <td id = "inputCadastrar" class = "input"><button type="submit" id="btnCadastrar">Cadastrar</button></td>
            </tr>
            
             
             </tbody>    
                </table>
            </form>
        <p id = "status"> </p>
        </div>
            <script>
              //adiciona estados e cidades (ainda só fiz estados)  
              console.log("<%=erroRegistro%>");
              $(document).ready(function(){    
                  loader('estados');
                  function loader(id, cidadeid){ 
                      var html = '';  
                      var cidade = '';
                      $.getJSON('https://gist.githubusercontent.com/letanure/3012978/raw/6938daa8ba69bcafa89a8c719690225641e39586/estados-cidades.json', 
                      function(data){  
                          if(id === 'estados' && cidadeid == null){  
                              if (typeof window === "object") {console.log('a');}
                              for(var i=0; i < data.estados.length; i++){ 
                                  html += '<option value="' + data.estados[i].sigla + '">' + data.estados[i].nome + '</option>';
                                                                        } 
                                                                    }
                          else{
                              for(var i = 0; i < data.estados.length; i++){
                                  if(data.estados[i].sigla == cidadeid){   
                                      document.getElementById('cidades').disabled = false;
                                      for (var j = 0; j < data.estados[i].cidades.length; j++){
                                          html += '<option value='+ data.estados[i].sigla +'>'+data.estados[i].cidades[j]+ '</option>';
                                          console.log(html);
                                      }
                                  }
                              }
                          }
                           $('#'+id).append(html);       
                                             });
                                    }
                              
                      $(document).on('change', '#estados', function(){
                              var cidadeid = $(this).val();
                              console.log(cidadeid);
                              if(cidadeid != null){
				loader('cidades', cidadeid);
			}
                          }
                                  );
                          
                       $(document).on('change', '#cidades', function(){
                           cidade = $("#cidades option:selected").text();
                           $.post("ajaxCidade", {city: cidade}, function(){console.log("Sucesso");});
                       })
                                          });
                     
              document.getElementById("status").style.visibility = "hidden";        
              <%if(erroRegistro != null){%>              
                    
                    document.getElementById("status").style.visibility = "visible";
                    console.log("<%=erroRegistro%>");
                    document.getElementById("status").innerHTML = "<%=erroRegistro%>";
                    document.getElementById("status").style.color = "red";
                    <%session.invalidate();%>
     <%}%>    
             <%if(sucessoRegistro != null){%> 
                    document.getElementById("status").style.visibility = "visible";
                    console.log("<%=sucessoRegistro%>");
                    document.getElementById("status").innerHTML = "<%=sucessoRegistro%> ";
                    var a = document.createElement('a');
                    var linkText = document.createTextNode("Clique aqui para voltar à tela de log-in.");
                    a.appendChild(linkText);
                    a.href = "index.jsp";
                    $(a).attr("id", "link");
                    $(a).attr("text-decoration", "underline");
                    a.style.color = "green";
                    document.getElementById("status").appendChild(a);
                    document.getElementById("status").style.color = "green";
                    <%session.invalidate();%>
             <%}%>
                          
              
              let limitTxt = document.getElementsByClassName("txt").length-1;
              let limitInput = document.getElementsByClassName("input").length-1;
              
              for(let i = 1; i <= limitTxt; i++){
              document.getElementsByClassName("txt")[i].style.visibility="hidden";
                                               }
              for(let i = 1; i <= limitInput; i++){
              document.getElementsByClassName("input")[i].style.visibility="hidden";
                                               }
                                               
              function mascaraCEP(){
                   var CEP = document.getElementById('CEP');
                   if(CEP.value.length == 5){CEP.value += "-";}
                                    }
              
              function habilitar() {
                var opcao = document.getElementById("categorias").value;
                if(opcao !== "blank"){
                  
                  if(opcao === "cliente"){ 
                      
              //verifica se linhas de RS/CNPJ ou nome/CPF existem e as remove se existirem        
              if(document.getElementById("tr2") !== null){
                  console.log(document.getElementById("tr2"));
                  var trr1 = document.getElementById("tr2");
                  var trr2 = document.getElementById("tr3");
                  console.log(trr1); 
                  trr1.remove();
                  trr2.remove();
              }
              
             
              //adiciona linhas de nome e CPF 
              var table = document.getElementById("tbody");
              var tr = table.insertRow(1);
              var tr2 = table.insertRow(2);
              
              var td1 = tr.insertCell(0);
              var td2 = tr.insertCell(1);
              var td3 = tr2.insertCell(0);  
              var td4 = tr2.insertCell(1);
              
              
              
              td1.outerHTML = '<td style ="color: #FFEA00" id = "txtNome" class = "txt">Nome: </td>';
              td2.innerHTML += '<input type="text" name="nome" id="nome" class = "input"/>';
              td3.outerHTML = '<td style ="color: #FFEA00" id = "txtCPF" class = "txt">CPF: </td>';
              td4.innerHTML += '<input type="text" name="CPF" id="CPF" maxlength="14" class = "input" onkeyup="mascaraCPF()"/>';
              
              tr.setAttribute("id", "tr2");
              tr2.setAttribute("id", "tr3");
              
              limitInput = document.getElementsByClassName("input").length-1;
	      limitTxt = document.getElementsByClassName("txt").length-1;
              
              for(let i = 1; i <= limitTxt; i++){
              
              document.getElementsByClassName("txt")[i].style.visibility="hidden";
                                               }
              for(let i = 1; i <= limitInput; i++){
              document.getElementsByClassName("input")[i].style.visibility="hidden";
                                                  }
                     
                     for(let i = 1; i <= limitTxt; i++){ 
                         document.getElementsByClassName("txt")[i].style.visibility = "visible";
                                                       }
                    
                                                       }
                     
                     for(let i = 1; i <= limitInput; i++){
                         document.getElementsByClassName("input")[i].style.visibility = "visible";
                                                         }
                     
                  if (opcao === "fornecedor"){  
              //verifica se linhas de RS/CNPJ ou nome/CPF existem e as remove se existirem
              if(document.getElementById("tr2") !== null){
                  var trr1 = document.getElementById("tr2");
                  var trr2 = document.getElementById("tr3"); 
                  trr1.remove();
                  trr2.remove();
              }
              //adiciona linhas de razão social e CNPJ
              
              var table = document.getElementById("tbody");
              var tr = table.insertRow(1);
              var tr2 = table.insertRow(2);
              
              var td1 = tr.insertCell(0);
              var td2 = tr.insertCell(1);
              var td3 = tr2.insertCell(0);  
              var td4 = tr2.insertCell(1);
              
              td1.outerHTML = '<td style ="color: #FFEA00" id = "txtRazSoc" class = "txt">Razão social: </td>';
              td2.innerHTML += '<input type="text" name="razSoc" id="razSoc" class =/>';
              td3.outerHTML = '<td style ="color: #FFEA00" id = "txtCNPJ" class = "txt">CNPJ: </td>';
              td4.innerHTML += '<input type="text" name="CNPJ" id="CNPJ" maxlength = "18" onkeyup="mascaraCNPJ()" class "input"/>';
              
              tr.setAttribute("id", "tr2");
              tr2.setAttribute("id", "tr3");
              
              limitInput = document.getElementsByClassName("input").length-1;
	      limitTxt = document.getElementsByClassName("txt").length-1;
              
              for(let i = 1; i <= limitTxt; i++){
              
              document.getElementsByClassName("txt")[i].style.visibility="hidden";
                                               }
              for(let i = 1; i <= limitInput; i++){
              document.getElementsByClassName("input")[i].style.visibility="hidden";
                                                  }
                      
                      for(let i = 1; i <= limitTxt; i++){ 
                         document.getElementsByClassName("txt")[i].style.visibility = "visible";
                                                       }
                                                       
                     
                     for(let i = 1; i <= limitInput; i++){
                         document.getElementsByClassName("input")[i].style.visibility = "visible";
                                                         } 
                    
                    
                }
                      
                                             }
                else{
                    
                    if(document.getElementById("tr2") !== null){
                  var trr1 = document.getElementById("tr2");
                  var trr2 = document.getElementById("tr3"); 
                  trr1.remove();
                  trr2.remove();
              }
              limitInput = document.getElementsByClassName("input").length-1;
	      limitTxt = document.getElementsByClassName("txt").length-1;
              
                    for(let i = 1; i <= limitTxt; i++){
              document.getElementsByClassName("txt")[i].style.visibility="hidden";
                                               }
              for(let i = 1; i <= limitInput; i++){
              document.getElementsByClassName("input")[i].style.visibility="hidden";
                                               }}
                                         }
              function mascaraCPF(){
                  var i = 0;
                  var CPF = document.getElementById('CPF');
                  if((CPF.value.length == 3 && CPF.value[4] === undefined) || (CPF.value.length == 7 && CPF.value[8] === undefined)){CPF.value += ".";}
                  else if (CPF.value.length == 11 && CPF.value[12] === undefined){CPF.value += "-";}
                  else if((CPF.value[4] !== "." && CPF.value[4] !== undefined) || (CPF.value[8] !== "." && CPF.value[8] !== undefined) || (CPF.value[12] !== "-" && CPF.value[12] !== undefined)){ 
                        console.log(CPF.value);
                        var newCPF = CPF.value;
                        
                        newCPF = CPF.value.slice(0, -1);
                        console.log(newCPF);
                        
                        var arr = newCPF.split("");
                        console.log(arr);
                        
                        arr = arr.splice(3, 0, '.');  
                        
                        //console.log(arr);
                        
                        /*for(i = 0; i <= 2; i++){
                            newCPF += CPF.value[i];
                                               }
                        newCPF += '.';    
                        
                        for(i = 5; i <= 7; i++){
                            newCPF += CPF.value[i];
                                               }
                        newCPF += '.';  
                        
                        for(i = 9; i <= 11; i++){
                            newCPF += CPF.value[i];
                                                }
                        newCPF += '-';
                        
                        for(i = 13; i <= 14; i++){
                            newCPF += CPF.value[i];
                                                }
                        console.log(newCPF);*/
                }
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
                   
                   if (tele.value.length == 15) {
                       var telefoneNum = $('#tele').val();
                       
                       telefoneNum = telefoneNum.replace(/\D/g,''); 
                       
                       console.log(telefoneNum);
                       
                                                }
                   
                                     }
              
              
              
              
                                               
              
          
            </script> 
    </body>
</html>

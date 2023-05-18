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
        
        
            
            <form id="formLogin" action="Registro" method="POST">
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
            <td id = "inputTele" class = "input"><input type = "text" id= "tele" name = "tele" maxlength="15" onkeyup="mascaraTele()"/></td> 
            </tr>
            
            <tr class = "resto" id = "tr5UF">
            <td class = "txt"  id = "txtUF">Estado: </td>  
            <td id = "inputUF" class = "input">
            <select id = "estados">
            <option value = "blank">...</option>
            </select>
            </td> 
            </tr>
            
            <tr class = "resto" id = "tr6cidade">
            <td class = "txt"  id = "txtCidade">Cidade: </td>  
            <td id = "inputCidade" class = "input">
            <select id = "cidades" disabled>
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
                                <select id="tiposLog">
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
            <td id = "inputCadastrar" class = "input"><button type="submit" id="btnCadastrar">Cadastrar</button></td>
            </tr>
            
             
                    
                </table>
            </form>
            
            <script>
              
              function colocaEstados() {
	fetch('https://geoapibrasil.herokuapp.com/v1/states')
		.then(res => res.json())
		.then(states => {
			
			states.map(state => {
				
				const option = document.createElement('option');
		
				option.setAttribute('value', state.state);
				option.textContent = state.stateName;
		
				selectEstados.appendChild(option);
			});
		})
}


function colocaCidades() {
	selectEstados.addEventListener('change', () => {
		
		let nosSelectCidades = selectCidades.childNodes;
		
		[...nosSelectCidades].map(node => node.remove());
		
		let estado = selectEstados.options[selectEstados.selectedIndex].value;
		
		fetch(`https://geoapibrasil.herokuapp.com/v1/cities?state=${estado}`)
			.then(res => res.json())
			.then(cities => {
				
				selectCidades.removeAttribute('disabled');
			
				cities.map(city => {
				
					const option = document.createElement('option');

					option.textContent = city.name;

					selectCidades.appendChild(option);
				});
			})
	});
}
              const selectEstados = document.querySelector('#states');
              const selectCidades = document.querySelector('#cities');  
              
              colocaEstados();
              
              
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

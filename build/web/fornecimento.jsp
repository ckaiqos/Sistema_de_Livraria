<%-- 
    Document   : fornecimento
    Created on : 04/06/2023, 21:07:00
    Author     : Usuario
--%>

<%
    Fornecedor fornecedorLogado = session.getAttribute("fornecedorLogado") != null? (Fornecedor) session.getAttribute("fornecedorLogado"): new Fornecedor();
    Conta contaLogada = session.getAttribute("contaLogada") != null? (Conta) session.getAttribute("contaLogada"): new Conta();
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="entidades.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
        <link rel="stylesheet" type="text/css" href="fornecimento.css"/>
        <title>Tela de Fornecedor</title>
    </head>
    <body>
        <h1>BELLES | LETRES</h1>
        
        <form id="formCadastro" action="Fornecimento" method="POST">
                <table border = 0>
                    <tbody id = "tbody"> 
                        
                        <tr id="tr1">
                            <td style="color: rgb(255, 234, 0); visibility: visible;" id="txtNome" class="txt">Nome do livro: </td>
                            <td><input type="text" name="nome" id="nome" class="input" style="visibility: visible;"></td>
                        </tr>
                        
                        <tr id="tr2">
                            <td style="color: rgb(255, 234, 0); visibility: visible;" id="txtQnt" class="txt">Quantidade disponível: </td>
                            <td><input type="number" min="1" name="qntDisp" id="qntDisp" class="input" style="visibility: visible;"></td>
                        </tr>
                        
                        <tr id="tr3">
                            <td style="color: rgb(255, 234, 0); visibility: visible;" id="txtPrec" class="txt">Preço: </td>
                            <td><input type="text" name="preco" id="preco" class="input" onkeyup="mascaraPrec()" style="visibility: visible;"></td>
                        </tr>
                        
                        <tr id="tr4">
                            <td style="color: rgb(255, 234, 0); visibility: visible;" id="txtISBN" class="txt">ISBN: </td>
                            <td><input type="text" name="ISBN" id="ISBN" maxlength="17" onkeydown="mascaraISBN(event)" class="input" style="visibility: visible;"></td>
                        </tr>
                        
                        <tr id="tr5">
                            <td style="color: rgb(255, 234, 0); visibility: visible;" id="txtEd" class="txt">Edição: </td>
                            <td><input type="text" name="edicao" id="edicao" class="input" style="visibility: visible;"></td>
                        </tr>
                        
                        <tr id="tr6">
                            <td style="color: rgb(255, 234, 0); visibility: visible;" id="txtGen" class="txt">Gênero: </td>
                            <td>
                                
                                <select id="genero" name = "genero" onchange = "console.log($('#genero').val())"> 
                                <option value="blank">...</option>
                                <option value="Ação">Ação e aventura</option>
                                <option value="Autoajuda">Autoajuda</option>
                                <option value="Biografia">Biografia</option>
                                <option value="Ciências Biológicas">Ciências Biológicas</option>
                                <option value="Ciências Exatas">Ciências Exatas</option>
                                <option value="Ciências Humanas">Ciências Humanas</option>
                                <option value="Comédia">Comédia</option>
                                <option value="Drama">Drama</option>
                                <option value="Distopia">Distopia</option>
                                <option value="Fantasia">Fantasia</option>
                                <option value="Financeiro">Financeiro</option>
                                <option value="Infantil">Infantil</option>
                                <option value="Ficção científica">Ficção científica</option>
                                <option value="Poesia">Mistério</option>
                                <option value="Novela">Novela</option>
                                <option value="Poesia">Poesia</option>
                                <option value="Poesia">Policial</option>
                                <option value="Religião e espiritualidade">Religião e espiritualidade</option>
                                <option value="Romance">Romance</option>
                                <option value="Romance">Suspense</option>
                                <option value="Terror">Terror</option>
                                <option value="Outro">Outro</option>
                                
                                </select>
                            </td>
                        </tr>
                        
                        <tr id="tr7">
                            <td style="color: rgb(255, 234, 0); visibility: visible;" id="txtAut" class="txt">Autor: </td>
                            <td><input type="text" name="autor" id="autor" class="input" style="visibility: visible;"></td>
                        </tr>
                        
                        <tr id="tr8">
                            <td style="color: rgb(255, 234, 0); visibility: visible;" id="txtAno" class="txt">Ano: </td>
                            <td><input type="number" name="ano" id="ano" class="input" pattern="/^-?\d+\.?\d*$/*" onKeyPress="if(this.value.length==4) return false;" style="visibility: visible" ></td>
                        </tr>
                        
                        <tr id = "tr9">
                        <td id = "inputCadastrar" class = "input"><button type="submit" id="btnCadastrar">Cadastrar</button></td>    
                        </tr>
                        
                    </tbody>
                </table>
        </form>
        
        <script>
            
            function mascaraISBN(evt){ 
            var i = 0;
            var ISBN = document.getElementById('ISBN');
            
            
            
            if((ISBN.value.length == 3 && ISBN.value[4] === undefined) || (ISBN.value.length == 5 && ISBN.value[6] === undefined) || (ISBN.value.length == 10 && ISBN.value[11] === undefined) || (ISBN.value.length == 15 && ISBN.value[16] === undefined)){ISBN.value += "-";}
                                  }
            
            function mascaraPrec(){
                var preco = document.getElementById('preco');
                                
                numTxt = preco.value.replace(/[^\d,.-]/g, '');
                
                if(preco.value) {
                
                numTxt = numTxt.replace(",", ".");
                
                num = parseFloat(numTxt);  
                
                const precoConver = num.toLocaleString("pt-BR", {
                    style: "currency",    
                    currency: "BRL",    
                    maximumFractionDigits: 2,
                });  
                
                //console.log(num);
                //console.log(precoConver);
                //console.log(typeof(precoConver));
                preco.value = precoConver; }
                
            }
            
          
       
       </script>
        
    </body>
</html>

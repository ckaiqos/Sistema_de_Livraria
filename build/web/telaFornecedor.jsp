<%-- 
    Document   : telaFornecedor
    Created on : 09/05/2023, 11:52:44
    Author     : windows
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
        <link rel="stylesheet" type="text/css" href="telaFornecedor.css"/>
        <title>Tela de Fornecedor</title>
    </head>
    <body>
        <h1>BELLES | LETRES</h1>
        
        <div align="left">
           <a href="fornecimento.jsp">Oferecer livro</a>
           &nbsp;
           <a href="index.jsp">Sair</a>
        </div>
        
    </body>
    
    <script>console.log("<%=fornecedorLogado.getCnpj()%>");</script>
    
</html>

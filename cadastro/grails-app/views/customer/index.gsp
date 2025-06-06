<!DOCTYPE html>
<html>
<head>
    <title>Cadastro de Cliente</title>
    <asset:stylesheet href="customer.css"/>
</head>
<body>

<div class="container"> 

<div class="header">
    <h1>Cadastro de Cliente</h1>
</div>

<g:hasErrors bean="${customer}">
    <div class="info-card error">
        <g:renderErrors bean="${customer}" as="list"/>
    </div>
</g:hasErrors>

<g:if test="${flash.message}">
    <div class="info-card success">${flash.message}</div>
</g:if>


<form action="${createLink(controller:'customer', action:'save')}" method="post">
    <div class="form-group"><input type="text" name="name" placeholder="Nome" value="${customer?.name ?: ''}" required/></div>
    <div class="form-group"><input type="text" name="cpf" placeholder="CPF" value="${customer?.cpf ?: ''}" required pattern="\d{11}" title="CPF deve conter 11 dígitos numéricos"/></div>
    <div class="form-group"><input type="text" name="phone" placeholder="Telefone" value="${customer?.phone ?: ''}" required pattern="\d{10,11}" title="Telefone deve conter 10 ou 11 dígitos numéricos"/></div>
    <div class="form-group"><input type="text" name="cep" id="cep" placeholder="CEP" value="${customer?.cep ?: ''}" required pattern="\d{5}-\d{3}" title="CEP deve estar no formato 00000-000"/></div>
    <div class="form-group"><input type="text" name="address" id="logradouro" placeholder="Logradouro" value="${customer?.address ?: ''}" required/></div>
    <div class="form-group"><input type="text" name="neighborhood" id="bairro" placeholder="Bairro" value="${customer?.neighborhood ?: ''}" required/></div>
    <div class="form-group"><input type="text" name="city" id="cidade" placeholder="Cidade" value="${customer?.city ?: ''}" required/></div>
    <div class="form-group"><input type="text" name="state" id="estado" placeholder="Estado" value="${customer?.state ?: ''}" required/></div>
    <button type="submit">Cadastrar</button>
</form>
</div>

<asset:javascript src="cep.js"/>
</body>
</html>

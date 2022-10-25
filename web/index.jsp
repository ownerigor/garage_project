<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menu</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    </head>
    <body>
        <div class="container text-center">
            <div class=""> 
                <h1></h1>
            </div>
            <h1>Gerenciar Veículos</h1>
            <div class="d-grid gap-2 col-4 mx-auto">
                <a href="${pageContext.request.contextPath}/DadosVeiculo" class="btn btn-primary">Novo Veículo</a>
                <a href="${pageContext.request.contextPath}/ListarVeiculo" class="btn btn-primary">Listar Veículos</a>
            </div>
            
            <br/>
            
            <h1>Gerenciar Marcas</h1>
            <div class="d-grid gap-2 col-4 mx-auto">
                <a href="marca/salvar.jsp" class="btn btn-primary">Nova Marca</a>
                <a href="${pageContext.request.contextPath}/ListarMarca" class="btn btn-primary">Listar Marcas</a>
            </div>
        </div>
            
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
    </body>
</html>

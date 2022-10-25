<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de Marcas</title>
        <!-- Bootstrap 5.2.0 CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous"> 
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
        <!-- FontAweome 6.1.2 JS -->
        <script src="https://kit.fontawesome.com/f2866a4178.js" crossorigin="anonymous"></script>
        <link href="css/style.css" rel="stylesheet">
    </head>
    <body>
        <div class="text-center">
            <h1>Marcas</h1>
            <p><a class="text-muted" href="index.jsp">Menu</a> / Lista de Marcas</p>
            <hr>
            <a href="${pageContext.request.contextPath}/DadosMarca" class="btn btn-primary mx-auto">Nova Marca</a>
            <hr>
        </div>
        <div class="container">
            <table id="tabelaMarcas" class="">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Nome</th>
                        <th>Descrição</th>
                        <th>Opções</th>
                        <th class="text-white">Opções</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="marca" items="${marcas}">
                        <tr>
                           <td>${marca.idMarca}</td>
                           <td>${marca.nomeMarca}</td>
                           <td>${marca.descricaoMarca}</td>
                           <td>
                                <a href="${pageContext.request.contextPath}/ExcluirMarca?idmarca=${marca.idMarca}">
                                    <i class="fa-solid fa-trash text-danger"></i> Excluir
                                </a>
                            </td>
                            <td>
                                <a href="${pageContext.request.contextPath}/CarregarMarca?idmarca=${marca.idMarca}">
                                    <i class="fa-solid fa-pen-to-square text-info"></i> Editar
                                </a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </body>
</html>

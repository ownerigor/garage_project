<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de Veículos</title>
        <!-- Bootstrap 5.2.0 CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous"> 
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
        <!-- FontAweome 6.1.2 JS -->
        <script src="https://kit.fontawesome.com/f2866a4178.js" crossorigin="anonymous"></script>
        <link href="css/style.css" rel="stylesheet">
    </head>
    <body>
        <div class="text-center">
            <h1>Veículos</h1>
            <p><a class="text-muted" href="index.jsp">Menu</a> / Lista de Veículos</p>
            <hr>
        </div>
        <div class="container">
            <table id="tabelaVeiculos" class="">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Nome</th>
                        <th>Ano de Fabricação</th>
                        <th>Marca</th>
                        <th>Valor</th>
                        <th>Opções</th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="veiculo" items="${veiculos}">
                        <tr>
                            <td>${veiculo.idVeiculo}</td>
                            <td>${veiculo.nomeVeiculo}</td>
                            <td>${veiculo.anoFabricacaoVeiculo}</td>
                            <td>${veiculo.marca.nomeMarca}</td>
                            <td>R$${veiculo.valorVeiculo}</td>
                            <td>
                                <a href="${pageContext.request.contextPath}/ExcluirVeiculo?idveiculo=${veiculo.idVeiculo}">
                                    <i class="fa-solid fa-trash text-danger"></i> Excluir
                                </a>
                            </td>
                            <td>
                                <a href="${pageContext.request.contextPath}/CarregarVeiculo?idveiculo=${veiculo.idVeiculo}">
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

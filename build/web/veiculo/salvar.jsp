<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Salvar Veículo</title>
        <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    </head>
    <body>
        <div class="text-center">
            <h1 class="h3 text-center">Salvar Veículo</h1>
            <hr>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-6 mx-auto">
                    <form name="salvarveiculo" method="POST" action="${pageContext.request.contextPath}/SalvarVeiculo">
                        <div class="mb-3">
                            <label for="idveiculo" class="form-label">ID</label>
                            <input id="idveiculo" class="form-control" name="idveiculo" value="${veiculo.idVeiculo}" type="number" readonly/>
                        </div>
                        <div class="mb-3">
                            <label for="nomeveiculo" class="form-label">Nome</label>
                            <input id="nomeveiculo" class="form-control" name="nomeveiculo" value="${veiculo.nomeVeiculo}" type="text" required/>
                        </div>
                        <div class="mb-3">
                            <label for="anofabricacaoveiculo" class="form-label">Ano de Fabricação</label>
                            <input id="anofabricacaoveiculo" class="form-control" name="anofabricacaoveiculo" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" value="${veiculo.anoFabricacaoVeiculo}" type="text" required/>
                        </div>
                        <div class="mb-3">
                            <label for="valorveiculo" class="form-label">Valor (em R$)</label>
                            <input id="valorveiculo" class="form-control" name="valorveiculo" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" value="${veiculo.valorVeiculo}" type="text" required/>
                        </div>
                        <div class="mb-3">
                            <label for="idmarca" class="form-label">Marca</label>
                            <select id="idmarca" name="idmarca" value="${marca.idMarca}" class="form-select"> 
                                <c:forEach var="marca" items="${marcas}">
                                   <option value="${marca.idMarca}"${marca.idMarca==veiculo.marca.idMarca?'selected':''}>${marca.nomeMarca}</option>
                                </c:forEach>
                            </select>
                        </div>
                        <div class="text-center">
                            <input class="btn btn-primary" type="submit" value="Salvar"/>
                            <a class="btn btn-danger" href="index.jsp">Voltar<a/>
                        </div>
                    </form>
                        
                    <div class="text-center">
                        <p>${mensagem}</p>
                    </div>
                </div>
            </div>
        </div>
        
        <!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
    </body>
</html>

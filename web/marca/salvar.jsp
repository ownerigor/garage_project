<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Salvar Funcionário</title>
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-6 mx-auto">
                    <form name="salvarmarca" method="POST" action="${pageContext.request.contextPath}/SalvarMarca">
                        <div class="mb-3">
                            <label for="codsabao" class="form-label">ID</label>
                            <input id="idmarca" class="form-control" name="idmarca" value="${marca.idMarca}" type="number" readonly/>
                        </div>
                        <div class="mb-3">
                            <label for="nomemarca" class="form-label">Nome</label>
                            <input id="nomemarca" class="form-control" name="nomemarca" value="${marca.nomeMarca}" type="text" required/>
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
    </body>
</html>

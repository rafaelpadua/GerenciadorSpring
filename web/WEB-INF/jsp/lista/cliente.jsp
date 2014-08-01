
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="../layout/imports.jsp" %>
    </head>
    <body>
        <%@include file="../layout/menu.jsp" %>
        <%@include file="../layout/procurar.jsp" %>
        <div class="container row-fluid">
            <div class="container">
                <div class="row-fluid">
                    <div class="span12">
                        <h1>Dizimistas Ativos</h1>
                        <table id="contactTableResponse" class="table table-striped">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>NOME</th>
                                    <th>ENDEREÇO</th>
                                    <th>BAIRRO</th>
                                    <th>SETOR</th>
                                    <th>#</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="cliente" items="${clientes}">
                                    <c:if test="${cliente.status == 'true'}">

                                        <tr>
                                            <td>${cliente.id}</td>
                                            <td>${cliente.nome}</td>
                                            <td>${cliente.endereco}</td>
                                            <td>${cliente.bairro}</td>
                                            <td>${cliente.setorid.descricao}</td>
                                            <td><a class="btn btn-danger" href="${pageContext.request.contextPath}/cliente/editar/${cliente.id}">Editar</a></td>
                                        </tr>

                                    </c:if>
                                </c:forEach>        
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>

        <div class="container row-fluid">
            <div class="container">
                <div class="row-fluid">
                    <div class="span12">
                        <h1>Dizimistas Inativos</h1>
                        <table id="contactTableResponse" class="table table-striped">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>NOME</th>
                                    <th>ENDEREÇO</th>
                                    <th>BAIRRO</th>
                                    <th>SETOR</th>
                                    <th>#</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="cliente" items="${clientes}">
                                    <c:if test="${cliente.status == 'false'}">
                                        <tr>
                                            <td>${cliente.id}</td>
                                            <td>${cliente.nome}</td>
                                            <td>${cliente.endereco}</td>
                                            <td>${cliente.bairro}</td>
                                            <td>${cliente.setorid.descricao}</td>
                                            <td><a class="btn btn-danger" href="${pageContext.request.contextPath}/cliente/editar/${cliente.id}">Editar</a></td>
                                        </tr>
                                    </c:if>
                                </c:forEach>        
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <%@include file="../layout/footer.jsp" %>
    </body>
</html>

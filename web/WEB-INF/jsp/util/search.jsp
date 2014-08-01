<%-- 
    Document   : search
    Created on : 06/12/2013, 23:23:17
    Author     : Rafael
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:forEach var="cliente" items="${clientes}">
    <tr id="tr_${cliente.id}">
        <td>${cliente.id}</td>
        <td>${cliente.nome}</td>
        <td>${cliente.endereco}</td>
        <td>${cliente.bairro}</td>
        <td>${cliente.cidade}</td>
        <td>${cliente.setorid.descricao}</td>
        <td><c:if test="${cliente.status == true}">ATIVO</c:if><c:if test="${cliente.status == false}">INATIVO</c:if></td>
    </tr>
</c:forEach>

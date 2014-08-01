<%-- 
    Document   : search
    Created on : 06/12/2013, 23:23:17
    Author     : Rafael
--%>
<%@page import="com.dizimo.spring.ajax.util.Converters"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<tbody>
<thead>
    <tr>
        <th>DATA</th>
        <th>MES</th>
        <th>ANO</th>
        <th>VALOR</th>
    </tr>
</thead>

<c:forEach items="${lancamentos}" var="lancamento"> 
    <tr>
        <td><fmt:formatDate value="${lancamento[0]}" pattern="dd/MM/yyyy" /></td>
        <td>${lancamento[1]}</td>
        <td>${lancamento[2]}</td>
        <td><fmt:formatNumber value="${lancamento[3]}" minFractionDigits="2" type="currency"/></td>
    </tr>
</c:forEach>        
</tbody>




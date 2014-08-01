<%-- 
    Document   : contact
    Created on : 26/11/2013, 23:00:51
    Author     : Rafael
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="../layout/imports.jsp" %>

    </head>
    <body>
        <%@include  file="../layout/menu.jsp" %>
        <div  class="navbar-inner">
            <h2>Find Contact By Name</h2>

            <h2>Submit new Contact</h2>
            <form id="saveContact">
                <div>
                    <label for="firstNameInput">First Name</label>
                    <input type="text" name="firstName" id="firstNameInput"/>
                </div>
                <div>
                    <label for="lastNameInput">Last Name</label>
                    <input type="text" name="lastName" id="lastNameInput"/>
                </div>
                <div>
                    <label for="telefoneInput">Telefone</label>
                    <input type="text" name="telefone" id="telefoneInput"/>
                </div>
                <div><input id="submit" type="submit" value="Save Contact"></div>
            </form>

            <br><br>
            <h2>Table Contact</h2>
            <table id="contactTableResponse" class="table tr">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>NOME</th>
                        <th>SOBRENOME</th>
                        <th>TELEFONE</th>
                    </tr>
                </thead>
                <tfoot>
                    <tr>
                        <th scope="row">Spring-Ajax</th>
                        <th scope="4">JQuery Ajax</th>
                    </tr>
                </tfoot>
                <tbody>
                    <c:forEach items="${contacts}" var="contact">
                        <tr>
                            <td>${contact.id}</td>
                            <td>${contact.firstName}</td>
                            <td>${contact.lastName}</td>
                            <td>${contact.telefone}</td>
                        </tr>
                    </c:forEach>        
                </tbody>
            </table>
        </div>
    </body>
</html>

<script>
    $(document).ready(function() {

        $('#telefoneInput').mask('(00) 0000-0000');

        $('#saveContact').submit(function(e) {

            $.post('/paroquia/contact/save', $(this).serialize(), function(contato) {

                $('#contactTableResponse').last().append(
                        '<tr>' +
                        '<td>' + contato.id + '</td>' +
                        '<td>' + contato.firstName + '</td>' +
                        '<td>' + contato.lastName + '</td>' +
                        '<td>' + contato.telefone + '</td>' +
                        '</tr>'
                        );
            });
            clearInputs();
            e.preventDefault();
        });
    });

    function clearInputs() {
        $('#saveContact').each(function() {
            this.reset();
        });
    }
    ;
</script>

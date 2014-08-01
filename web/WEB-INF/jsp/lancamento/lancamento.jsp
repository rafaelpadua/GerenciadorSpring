<%-- 
    Document   : contact
    Created on : 26/11/2013, 23:00:51
    Author     : Rafael
--%>
<%@page import="java.io.PrintWriter"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="../layout/imports.jsp" %>
    </head>
    <body>
        <%@include file="../layout/menu.jsp" %>

        <div class="hero-unit">
            <form  class="form-search" id="buscar">
                <div class=" controls-row input-append">
                    <input type="text" class="span4 search-query" id="search" placeholder="Procurar por NOME" required="true">
                    <input type="text" class="span4 search-query" id="searchSobrenome" placeholder="Procurar por SOBRENOME" required="true">
                </div>

                <table id="loadTable" class="table table-condensed">
                    <tbody id="tbody">
                        <%--<%@include file="../util/exibirLancamento.jsp" %>--%>
                    </tbody>
                </table>
            </form>
        </div>

        <div class="hero-unit">
            <div class="container-fluid">
                <h5 class="lead">Lancamentos</h5>
                <div class="row-fluid">
                    <div class="span4">
                        <form class="form-search" id="cadastroSearch">
                            <div class="controls-row">
                                <label class="span4">Numero Cadastro</label>
                            </div>

                            <div class=" controls-row input-append">
                                <input type="text" class="span8 search-query" id="codInput" required="true">
                                <button type="submit" class="btn" id="botao">Search</button>
                            </div>
                        </form>
                        <div id='resultado'></div>
                        <div id="info"></div>
                    </div>
                </div>
            </div>
        </div>
        <%@include file="../layout/footer.jsp" %>
    </body>
</html>

<script>
    $(document).ready(function() {
        $('#codInput').mask("0000");

        $('#cadastroSearch').submit(function(e) {

            var numeroCadastro = $('#codInput').val();

            $.post('/paroquia/cliente/buscar', {cod: numeroCadastro}, function(cliente) {

                if (cliente === '') {
                    
                    $('#info').append( 
                            "<p>" + "Opppsss! Não encontramos nenhum registro!" + "</p>"
                            );
                } else {
                   
                    $('#resultado').append(
                            "<input  class = 'span12' type:'text' value='  " + cliente.nome + "'>" 
                            );
                }
            });
            clearInputs();
            e.preventDefault();
        });
    });





    $(document).ready(function() {
        $('#search').keyup(function(e) {
            var filter = $('#search').val();
            if (filter.length > 0) {
                loadtable(filter);
            } else {
                $('tr[id*="tr_"]').remove();
            }
        });
    });

    $(document).ready(function() {
        $('#searchSobrenome').keyup(function(e) {
            var filter = $('#searchSobrenome').val();
            if (filter.length > 0) {
                loadtableSobre(filter);
            } else {
                $('tr[id*="tr_"]').remove();
            }
        });
    });

    function loadtableSobre(filter) {
        var url = '/paroquia/cliente/loadSobrenome/' + filter;
        $('#tbody').load(url, function(response, status, xhr) {

            if (status === success) {
                $('#info').html("Tudo certo!");
            }

            if (status === "error") {
                var msg = "Desculpa, mas ocorreu um erro: ";
                $('#info').html(msg + xhr.status + " " + xhr.statusText);
            }
        });
        return  false;
    }

    function loadtable(filter) {
        var url = '/paroquia/cliente/load/' + filter;
        $('#tbody').load(url, function(response, status, xhr) {

            if (status === success) {
                $('#info').html("Tudo certo!");
            }

            if (status === "error") {
                var msg = "Desculpa, mas ocorreu um erro: ";
                $('#info').html(msg + xhr.status + " " + xhr.statusText);
            }
        });

        return  false;
    }

    function clearInputs() {
        $('#cadastroSearch').each(function() {
            this.reset();
        });

        $('#cadastroSearch').each(function() {
            this.reset();
        });
    }
</script>
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
        <%@include file="../layout/menu.jsp" %>
        <div class="container page-wrap">
            
            <div class="container">
                <div class="row-fluid">
                    <div class="span12">
                        <form id="saveContact">
                            <h5 class="lead">Cadastro de Dizimistas</h5>

                            <div class="controls-row">
                                <label class="span9" for="NomeInput">Nome</label>
                                <label class="span3" for="DataNascimentoInput">Data de Nascimento</label>
                            </div>
                            <div class="controls-row">
                                <input class="span9" type="text" id="nomeInput" required="true"/>
                                <input class="span3" type="datetime" id="dataNascimentoInput" required="true"/>
                            </div>

                            <div class="controls-row">
                                <label class="span9" for="conjuge">Cônjuge</label>
                                <label class="span3" for="dataCasamento">Data do Casamento </label>
                            </div>

                            <div class="controls-row">
                                <input class="span9"type="text" id="conjugeInput">
                                <input class="span3" type="datetime" id="dataCasamentoInput">
                            </div>

                            <div class="controls controls-row">
                                <label class="span3"for="cpf">CPF</label>
                                <label class="span3"for="rg">RG</label>
                                <label class="span2" for="sexo">Sexo</label>
                                <label class="span2" for="estadocivil">Estado Civil</label>
                                <label class="span2" for="pais">Pai e/ou Mãe</label>

                            </div>

                            <div class="controls controls-row">
                                <input class="span3" type="text" id="cpfInput">
                                <input class="span3" type="text" id="rgInput">
                                <select class="span2" type="text" id="sexoInput" required="true">
                                    <option value="">Selecione</option>
                                    <option value="Masculino">Masculino</option>
                                    <option value="Feminino">Feminino</option>
                                </select>
                                <select class="span2"type="text" id="estadocivilInput" required="true">
                                    <option value="">Selecione</option>
                                    <option value="Casado(a)">Casado(a)</option>
                                    <option value="Solteiro(a)">Solteiro(a)</option>
                                    <option value="Amasiado(a)">Amasiado(a)</option>
                                    <option value="Divorciado(a)">Divorciado(a)</option>
                                    <option value="Divorciado(a)">Viúvo(a)</option>
                                </select>
                                <select class="span2" type="text" id="paisInput" required="true">
                                    <option value="">Selecione</option>
                                    <option value="Sim">Sim</option>
                                    <option value="Nao">Não</option>
                                </select> 
                            </div>   

                            <div class="row-fluid">
                                <div class="span12">
                                    <h5 class="lead">Endereço</h5>

                                    <div class="controls-row">
                                        <label class="span8" for="endereco">Endereço</label>
                                        <label class="span4" for="bairro">Bairro</label>
                                    </div>
                                    <div class="controls-row">
                                        <input class="span8" type="text" id="enderecoInput" required="true">
                                        <input class="span4" type="text" id="bairroInput" required="true">
                                    </div>

                                    <div class="controls-row">
                                        <label class="span2" for="cep">CEP</label>
                                        <label class="span2" for="estado">Estado</label>
                                        <label class="span4" for="cidade">Cidade</label>
                                        <label class="span2" for="telefone">Telefone</label>
                                        <label class="span2" for="celular">Celular</label>
                                    </div>

                                    <div class="controls-row">
                                        <input class="span2" type="text" id="cepInput" value="37.775-000" required="true">
                                        <select class="span2" id="estadoInput" required="true">

                                            <option value="MG">Minas Gerais</option>

                                        </select>
                                        <input class="span4" type="text" id="cidadeInput" value="Santa Rita de Caldas" required="true">
                                        <input class="span2" type="text" id="telefoneInput">
                                        <input class="span2" type="text" id="celularInput">
                                    </div>

                                    <div class="controls-row">
                                        <label class="span2" for="setorInput">Setor</label>
                                        <label class="span2" for="statusInput">Status</label>
                                        <label class="span2" for="inicioInput">Data Cadastro</label>
                                    </div>

                                    <div class="controls-row">
                                        <select class="span2" type="text" id="setor_idInput" required="true">
                                            <option value="">Selecione</option>
                                            <c:forEach items="${setores}" var="setor">
                                                <option value="${setor.id}">${setor.descricao}</option>
                                            </c:forEach>
                                        </select>
                                        <select class="span2" type="text" id="statusInput" required="true">
                                            <option value="true">Ativo</option>
                                            <option value="false">Inativo</option>
                                        </select>
                                        <input class="span2" type="datetime" id="inicioInput"/>
                                    </div>
                                    
                                </div>

                                <div class="row-fluid">
                                    <div class="span12">
                                        <input id="submit" type="submit" value="Salvar" class="btn btn-primary">
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <%@include file="../layout/footer.jsp" %>

        <div id="myModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-header">
                <h3 id="myModalLabel">Cadastro Salvo com Sucesso!</h3>
            </div>
            <div class="modal-body" id="teste"></div>
            <div class="modal-footer">
                <button class="btn" data-dismiss="modal" aria-hidden="true">Fechar</button>
            </div>
        </div>
        
     


    </body>
</html>

<script>
    $(document).ready(function() {

        $('#dataNascimentoInput').mask("00/00/0000");
        $('#dataCasamentoInput').mask('00/00/0000');
        $('#cpfInput').mask('000.000.000-00');
        $('#cepInput').mask('00.000-000');
        $('#telefoneInput').mask('(00) 0000-0000');
        $('#celularInput').mask('(00) 0000-0000');
        $('#inicioInput').mask("00/00/0000")

        $('#saveContact').submit(function(e) {

            var nome = $('#nomeInput').val();
            var nascmento = $('#dataNascimentoInput').val();
            var conjuge = $('#conjugeInput').val();
            var casamento = $('#dataCasamentoInput').val();
            var cpf = $('#cpfInput').val();
            var rg = $('#rgInput').val();
            var sexo = $('#sexoInput').val();
            var estadoCivil = $('#estadocivilInput').val();
            var pais = $('#paisInput').val();
            var endereco = $('#enderecoInput').val();
            var bairro = $('#bairroInput').val();
            var cep = $('#cepInput').val();
            var estado = $('#estadoInput').val();
            var cidade = $('#cidadeInput').val();
            var telefone = $('#telefoneInput').val();
            var celular = $('#celularInput').val();
            var setor = $('#setor_idInput').val();
            var status = $('#statusInput').val();

            $.post('/paroquia/cliente/save', {nameinput: nome, nascimentoInput: nascmento, conjugeInput: conjuge, casamentoInput: casamento,
                cpfInput: cpf, rgInput: rg, sexoInput: sexo, estadoCivilInput: estadoCivil, paisInput: pais, enderecoInput: endereco,
                bairroInput: bairro, cepInput: cep, estadoInput: estado, cidadeInput: cidade, telefoneInput: telefone, celularInput: celular,
                setorInput: setor, status: status}, function(cliente) {
                
                $('#teste').html('Cadastro Número: ' + '<h1>'+ cliente.id + '</h1>');
                $('#myModal').modal('show');
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
    
      $(function() {
        var currentTime = new Date();
        var month = currentTime.getMonth() + 1;
        var day = currentTime.getDate();
        var year = currentTime.getFullYear();
        var date = day + "/" + month + "/" + year;
        $('[id=inicioInput]').val(date);

    });

</script>


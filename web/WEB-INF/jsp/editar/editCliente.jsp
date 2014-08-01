<%-- 
    Document   : contact
    Created on : 26/11/2013, 23:00:51
    Author     : Rafael
--%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.dizimo.spring.ajax.util.Converters"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
                        <div class="span12">
                            <a class="btn btn-danger" href="${pageContext.request.contextPath}/cliente/home">Cadastro de Dizimistas</a>
                            <a class="btn btn-danger" href="${pageContext.request.contextPath}/cliente/listar">Listagem de Dizimistas</a>
                            <br><br>
                        </div>

                        <form id="saveContact">
                            <h5 class="lead"> Editar Cadastro de Dizimistas</h5>

                            <div class="controls-row">
                                <label class="span1" for="idInput">Código</label>
                                <label class="span8" for="NomeInput">Nome</label>
                                <label class="span3" for="DataNascimentoInput">Data de Nascimento</label>
                            </div>
                            <div class="controls-row">
                                <input class="span1" type="text" id="idInput" value="${cliente.id}" disabled="true"/>
                                <input class="span8" type="text" id="nomeInput" value="${cliente.nome}"/>

                                <input class="span3" type="text" id="dataNascimentoInput" value="<fmt:formatDate value="${cliente.datanascimento.time}"
                                                pattern="dd/MM/yyyy" />"/>


                            </div>

                            <div class="controls-row">
                                <label class="span9" for="conjuge">Cônjuge</label>
                                <label class="span3" for="dataCasamento">Data do Casamento </label>
                            </div>

                            <div class="controls-row">
                                <input class="span9"type="text" id="conjugeInput" value="${cliente.conjuge}">
                                <input class="span3" type="datetime" id="dataCasamentoInput" value="<fmt:formatDate value="${cliente.datacasamento.time}"
                                                pattern="dd/MM/yyyy" />">
                            </div>

                            <div class="controls controls-row">
                                <label class="span3"for="cpf">CPF</label>
                                <label class="span3"for="rg">RG</label>
                                <label class="span2" for="sexo">Sexo</label>
                                <label class="span2" for="estadocivil">Estado Civil</label>
                                <label class="span2" for="pais">Pai e/ou Mãe</label>

                            </div>

                            <div class="controls controls-row">
                                <input class="span3" type="text" id="cpfInput" value="${cliente.cpf}">
                                <input class="span3" type="text" id="rgInput" value="${cliente.rg}">

                                <select class="span2" type="text" id="sexoInput" >
                                    <c:if test="${cliente.sexo == 'Masculino' }">
                                        <option value="Masculino">Masculino</option>
                                        <option value="Feminino">Feminino</option>
                                    </c:if>
                                    <option value="Feminino">Feminino</option>
                                    <option value="Masculino">Masculino</option>

                                </select>

                                <select class="span2"type="text" id="estadocivilInput">
                                    <c:if test="${cliente.estadocivil == 'Casado(a)'}">
                                        <option value="Casado(a)">Casado(a)</option>
                                    </c:if>

                                    <c:if test="${cliente.estadocivil == 'Solteiro(a)'}">
                                        <option value="Solteiro(a)">Solteiro(a)</option>
                                    </c:if>

                                    <c:if test="${cliente.estadocivil == 'Amasiado(a)'}">
                                        <option value="Amasiado(a)">Amasiado(a)</option>
                                    </c:if>

                                    <c:if test="${cliente.estadocivil == 'Divorciado(a)'}">
                                        <option value="Divorciado(a)">Divorciado(a)</option>
                                    </c:if>

                                    <c:if test="${cliente.estadocivil == 'Viuvo(a)'}">
                                        <option value="Viuvo(a)">Viúvo(a)</option>
                                    </c:if>

                                    <option value="Casado(a)">Casado(a)</option>
                                    <option value="Solteiro(a)">Solteiro(a)</option>
                                    <option value="Amasiado(a)">Amasiado(a)</option>
                                    <option value="Divorciado(a)">Divorciado(a)</option>
                                    <option value="Viuvo(a)">Viúvo(a)</option>
                                </select>

                                <select class="span2" type="text" id="paisInput">
                                    <c:if test="${cliente.pais == 'Nao'}">
                                        <option value="Nao">Não</option>
                                        <option value="Sim">Sim</option>
                                    </c:if>

                                    <c:if test="${cliente.pais == 'Sim'}">
                                        <option value="Sim">Sim</option>
                                        <option value="Nao">Não</option>
                                    </c:if>
                                    <c:if test="${cliente.pais == ''}">
                                        <option value="">Selecione</option>
                                        <option value="Sim">Sim</option>
                                        <option value="Nao">Não</option> F
                                    </c:if>
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
                                        <input class="span8" type="text" id="enderecoInput" value="${cliente.endereco}">
                                        <input class="span4" type="text" id="bairroInput" value="${cliente.bairro}">
                                    </div>

                                    <div class="controls-row">
                                        <label class="span2" for="cep">CEP</label>
                                        <label class="span2" for="estado">Estado</label>
                                        <label class="span4" for="cidade">Cidade</label>
                                        <label class="span2" for="telefone">Telefone</label>
                                        <label class="span2" for="celular">Celular</label>
                                    </div>

                                    <div class="controls-row">
                                        <input class="span2" type="text" id="cepInput" value="${cliente.cep}">

                                        <c:if test="${cliente.estado == 'MG'}">
                                            <select class="span2" id="estadoInput" >
                                                <option value="MG">Minas Gerais</option>
                                            </select>
                                        </c:if>

                                        <input class="span4" type="text" id="cidadeInput" value="${cliente.cidade}">
                                        <input class="span2" type="text" id="telefoneInput" value="${cliente.telefone}">
                                        <input class="span2" type="text" id="celularInput" value="${cliente.celular}">
                                    </div>

                                    <div class="controls-row">
                                        <label class="span3" for="setorInput">Setor</label>
                                        <label class="span2" for="statusInput">Status</label>
                                    </div>

                                    <div class="controls-row">

                                        <select class="span2" type="text" id="setor_idInput">
                                            <option value="${cliente.setorid.id}">${cliente.setorid.descricao}</option>
                                            <c:forEach items="${setores}" var="setor">
                                                <option value="${setor.id}">${setor.descricao}</option>
                                            </c:forEach>
                                        </select>

                                        <select class="span2" type="text" id="statusInput">
                                            <c:if test="${cliente.status == 'true'}">        
                                                <option value="true">Ativo</option>
                                                <option value="false">Inativo</option>
                                            </c:if>

                                            <c:if test="${cliente.status == 'false'}">        
                                                <option value="false">Inativo</option>
                                                <option value="true">Ativo</option>
                                            </c:if>
                                        </select>
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
                <h3 id="myModalLabel">Cadastro atualizado com Sucesso!</h3>
            </div>
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

        $('#saveContact').submit(function(e) {
            
            var id = $('#idInput').val();
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

            $.post('/paroquia/cliente/save', {id: id, nameinput: nome, nascimentoInput: nascmento, conjugeInput: conjuge, casamentoInput: casamento,
                cpfInput: cpf, rgInput: rg, sexoInput: sexo, estadoCivilInput: estadoCivil, paisInput: pais, enderecoInput: endereco,
                bairroInput: bairro, cepInput: cep, estadoInput: estado, cidadeInput: cidade, telefoneInput: telefone, celularInput: celular,
                setorInput: setor, status: status}, function() {

                $('#myModal').modal('show',function (){
                    clearInputs();
                });
            });
           
            e.preventDefault();
        });
    });

    function clearInputs() {
        $('#saveContact').each(function() {
            this.reset();
        });
    }

</script>



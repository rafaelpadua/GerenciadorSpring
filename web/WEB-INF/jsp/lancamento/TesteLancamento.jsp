
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="../layout/imports.jsp" %>
    </head>
    <body>
        <%@include file="../layout/menu.jsp" %>

        <div class="container">
            <div class="hero">
                <h1>LANÇAMENTO DE CONTRIBUIÇÃO</h1>
            </div>
            <div class="row">
                <div class="">
                    <%@include file="../layout/procurar.jsp" %>
                </div>
                <div class="span6">
                    <h2>Lançamento</h2>
                    <form id="salvarLancamento">
                        <div class="controls-row">
                            <label class="span2" for="codClienteInput">Codigo Cliente</label>
                        </div>

                        <div class="controls-row">
                            <input class="span2" type="text" id="codClienteInput" required="true">
                        </div>

                        <div class="controls-row">
                            <label class="span2" for="dataPagamentoInput">Data de Pagamento</label>
                        </div>

                        <div class="controls-row">
                            <input class="span2" type="text" id="dataPagamentoInput" required="true">
                        </div>

                        <div>
                            <label for="refInput">Mês de Referência</label>
                            <select class="span2" type="text" id="refInput" required="true">
                                <option value="">Selecione</option>
                                <option value="Janeiro">Janeiro</option>
                                <option value="Fevereiro">Fevereiro</option>
                                <option value="Março">Março</option>
                                <option value="Abril">Abril</option>
                                <option value="Maio">Maio</option>
                                <option value="Junho">Junho</option>
                                <option value="Julho">Julho</option>
                                <option value="Agosto">Agosto</option>
                                <option value="Setembro">Setembro</option>
                                <option value="Outubro">Outubro</option>
                                <option value="Novembro">Novembro</option>
                                <option value="Dezembro">Dezembro</option>
                            </select>
                        </div>

                        <div>
                            <label for="AnoInput">Ano de referencia</label>
                            <select class="span2" type="text" id="anorefInput" required="true">
                                <option value="">Selecione</option>
                                <option value="2013">2013</option>
                                <option value="2014">2014</option>
                            </select>

                        </div>


                        <div class="input-prepend input-append">
                            <label for="valorInput">Valor</label>
                            <span class="add-on">R$</span>
                            <input class="span1" id="appendedPrependedInput" type="text" required="true">
                        </div>



                        <div class="row-fluid">
                            <div class="span12" id="botao">
                                <input id="submit" type="submit" value="Salvar" class="btn btn-primary">
                            </div>
                        </div>

                    </form>

                </div>
                <div class="span8">
                    <h2>Consulta</h2>
                    <div>
                        <h4 id="infoInput"></h4>
                        <table id="contactTableResponse" class="table table-striped"></table>
                    </div>
                </div>
            </div>
            <hr>
        </div>

        <div id="myModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-header">
                <h3 id="myModalLabel">Lançamento realizado com sucesso!</h3>
            </div>
            <div class="modal-body" id="teste"></div>
            <div class="modal-footer">
                <button class="btn" data-dismiss="modal" aria-hidden="true">Fechar</button>
            </div>
        </div>


        <%@include file="../layout/footer.jsp" %>
    </body>
</html>
<script>
    $(document).ready(function() {

        $('#codClienteInput').mask("0000");

        $('#salvarLancamento').submit(function(e) {
            var codcliente = $('#codClienteInput').val();
            var datapagto = $('#dataPagamentoInput').val();
            var mesref = $('#refInput').val();
            var anoref = $('#anorefInput').val();
            var valor = $('#appendedPrependedInput').val();


            $.post('/paroquia/lancamento/salvar', {cod: codcliente, data: datapagto, mes: mesref,
                ano: anoref, val: valor}, function(lancamento) {
                $('#teste').html('Dizimista: ' + '<h2>' + lancamento.cliente.nome + '</h2>' +
                        'Valor: ' + lancamento.valor + " reais");
                $('#myModal').modal('show');
            });
            clearInputs();
            e.preventDefault();
            $(function data() {
                var currentTime = new Date();
                var month = currentTime.getMonth() + 1;
                var day = currentTime.getDate();
                var year = currentTime.getFullYear();
                var date = day + "/" + month + "/" + year;
                $('[id=dataPagamentoInput]').val(date);

            });
        });
    });

    function clearInputs() {
        $('#salvarLancamento').each(function() {
            this.reset();
        });
    }

    $(function data() {
        var currentTime = new Date();
        var month = currentTime.getMonth() + 1;
        var day = currentTime.getDate();
        var year = currentTime.getFullYear();
        var date = day + "/" + month + "/" + year;
        $('[id=dataPagamentoInput]').val(date);

    });



    $(document).ready(function() {
        $('#codClienteInput').keyup(function() {
            var id = Number($('#codClienteInput').val());

            if (id > 0) {
                carregaTabela(id);
            } else {
                $('h4').hide();
                $('tr').remove();
            }

        });
    });

    function carregaTabela(id) {
        $('h4').show();
        $.post('/paroquia/cliente/buscar', {cod: id}, function(cliente) {
            if (cliente.nome === undefined || cliente.status === false) {
                $('#infoInput').html("Oppss! Registro não encontrado ou Inativo!");
                $('#botao').hide();
                $('#contactTableResponse').hide();
            } else {
                $('#infoInput').html(cliente.nome);
                $('#contactTableResponse').show();
                $('#botao').show();
            }


        });
        $('#contactTableResponse').load('/paroquia/lancamento/buscar/' + id, function(response, status, xhr) {

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
</script>

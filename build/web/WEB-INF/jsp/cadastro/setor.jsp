
<!doctype html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <%@include file="../layout/imports.jsp" %>
        <title></title>
    </head>
    <body>
        <%@include file="../layout/menu.jsp" %>
        <div class="container page-wrap">
            <p class="lead"/>
            <div class="container">
                <div class="row-fluid">
                    <div class="span12">
                        <form id="saveContact">
                            <h5 class="lead">Cadastro de Setores</h5>

                            <div class="controls-row">
                                <label class="span7" for="nomeInput">Responsável</label>
                                <label class="span3" for="descricaoInput">Setor</label>
                                <label class="span2" for="statusInput">Status:</label>
                            </div>
                            <div class="controls-row">
                                <input class="span7" type="text" id="nomeInput" />
                                <input class="span3" type="text" id="descricaoInput"/>
                                <select class="span2" type="text" id="statusInput">
                                    <option>Selecione</option>
                                    <option value="Sim">ATIVO</option>
                                    <option value="Nao">INATIVO</option>
                                </select>
                            </div>
                            <div class="row-fluid">
                                <div class="span12">
                                    <input id="submit" type="submit" value="Salvar" class="btn btn-primary">
                                </div>
                            </div>
                        </form>

                        <br><br>
                        <h2>Setores Cadastrados</h2>
                        <table id="contactTableResponse" class="table table-striped">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>RESPONSÁVEL</th>
                                    <th>SETOR</th>
                                    <th>ATIVO</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${setores}" var="setor">
                                    <tr>
                                        <td>${setor.id}</td>
                                        <td>${setor.nome}</td>
                                        <td>${setor.descricao}</td>
                                        <td>${setor.status}</td>
                                    </tr>
                                </c:forEach>        
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>

        <%@include  file="../layout/footer.jsp" %>
    </body>
</html>
<script>
    $(document).ready(function() {

        $('#saveContact').submit(function(e) {
            var nome = $('#nomeInput').val();
            var desc = $('#descricaoInput').val();
            var stat = $('#statusInput').val();

            $.post('/paroquia/setor/save', {n: nome, d: desc, s: stat}, function(setor) {

                $('#contactTableResponse').last().append(
                        '<tr>' +
                        '<td>' + setor.id + '</td>' +
                        '<td>' + setor.nome + '</td>' +
                        '<td>' + setor.descricao + '</td>' +
                        '<td>' + setor.status + '</td>' +
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

    function converteData() {
        var st = $("#DataNascimentoInput").val();
        var dt = new Date(st.replace(/(\d{2})\.(\d{2})\.(\d{4})/, '$3-$2-$1'));
        alert(dt);
    }
    
   

</script>
<div class="container-fluid"
     <div class="row">
        <div class="">
            <h2>Pesquisar</h2>
            <form  class="form-search" id="buscar">
                <div class=" controls-row input-append">
                    <input type="text" class="span2 search-query" id="search" placeholder="NOME" required="true">
                    <input type="text" class="span2 search-query" id="searchSobrenome" placeholder="SOBRENOME" required="true">
                </div>
                <br><br>
                <div>
                    <table class="table table-striped" style="width: 100%">
                        <thead  id="thead">
                        <th>Código</th>
                        <th>Nome</th>
                        <th>Endereço</th>
                        <th>Bairro</th>
                        <th>Cidade</th>
                        <th>Setor</th>
                        <th>Status</th>
                        </thead>
                        <tbody id="tbody"></tbody>
                    </table>
                </div>
            </form>

        </div>
    </div>


    <script>
        $(document).ready(function (){
            $('#thead').hide();
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
            $('#tbody').load(url);
            $('#thead').show();
            return  false;
        }

        function loadtable(filter) {
            var url = '/paroquia/cliente/load/' + filter;
            $('#tbody').load(url);
            return  false;
        }

    </script>
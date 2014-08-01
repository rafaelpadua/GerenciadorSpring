<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="navbar navbar-inverse">
    <div class="navbar-inner">
        <div class="container">

            <a class="brand" href="${pageContext.request.contextPath}/login">
                <img src="${pageContext.request.contextPath}/bootstrap/img/dizimo.png" width="100" height="90">
                Dizimo On-line
            </a>

            <div class="brand" href="${pageContext.request.contextPath}/login">
                Bem vindo, ${usuarioLogado}
            </div>

            <div class="nav-collapse collapse">
                <ul class="nav pull-right">
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            DIZIMISTA
                            <b class="caret"></b>
                        </a>
                        <ul class="dropdown-menu">
                            <li><a href="${pageContext.request.contextPath}/cliente/home">Cadastro</a></li>
                            <li><a href="${pageContext.request.contextPath}/cliente/listar">Cadastrados</a></li>
                        </ul>
                    </li>

                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            SETOR
                            <b class="caret"></b>
                        </a>
                        <ul class="dropdown-menu">
                            <li><a href="${pageContext.request.contextPath}/setor/home">Cadastro</a></li>
                        </ul>
                    </li>

                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            AGENDA
                            <b class="caret"></b>
                        </a>
                        <ul class="dropdown-menu">
                            <li><a href="${pageContext.request.contextPath}/contact/home">Cadastrar Contato</a></li>
                        </ul>
                    </li>

                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            LANÇAMENTO
                            <b class="caret"></b>
                        </a>
                        <ul class="dropdown-menu">
                            <li><a href="${pageContext.request.contextPath}/TesteLancamento/">Lançamento</a></li>
                        </ul>
                    </li>
                    
                     <li class="pull-right">
                        <a href="logout" >
                            Sair do sistema
                            <b class="caret"></b>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>


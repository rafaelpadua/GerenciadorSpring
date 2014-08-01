<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <script src="/GerenciadorSpring/bootstrap/js/jquery.min.js" ></script>
        <script src="/GerenciadorSpring/bootstrap/js/bootstrap.js" ></script>
        <!--%@include file="../layout/imports.jsp"%-->
    </head>
    <body>
    <body>
        <div class="container">
            <form  action="home" method="post" class="form-signin" id="form-login">
                <fieldset>
                    <h1>Login</h1>
                    <div class="control-group">
                        <div class="controls">
                            <input type="text" placeholder="Usuário" id="login" name="login"/>
                        </div>
                    </div>
                    <div class="control-group">
                        <div class="controls">
                            <input type="password" placeholder="Senha" id="senha" name="senha"/>
                        </div>
                    </div>
                    <div>
                        <input type="submit" value="Entrar" class="btn" id="botao"/> 
                    </div>
                </fieldset>
            </form>
        </div>
    </div>
</body>
</html>

<script>

</script>

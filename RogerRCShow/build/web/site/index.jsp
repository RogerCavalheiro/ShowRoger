<%@page import="modelo.Jogador"%>
<%@page import="dao.JogadorDAO"%>
<%
    String mensagem = "";
    if(request.getParameter("txtEntrarLogin")!=null &&
            request.getParameter("txtEntrarSenha")!=null)
    {
        JogadorDAO dao = new JogadorDAO();
        Jogador jogador; 
        String login = request.getParameter("txtEntrarLogin");
        String senha = request.getParameter("txtEntrarSenha");
        
        jogador = dao.realizarLogin(login, senha);
        if(jogador !=null)
        {
            session.setAttribute("jogador", jogador);
            response.sendRedirect("jogo.jsp");
        }
        else
        {
            mensagem = "Login errado";
        }   
    } 
%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Show do Milhão</title>
        <link rel="stylesheet" href="css/estilo.css"/>
    </head>
    <body>
        <div class="centralizar">
            <img src="img/show.png" alt=""/>
        </div>
        <div class="inicialformulario">
            <h4>Entrar</h4>
            <form action="index.jsp" method="post">
                <label>Login:</label>
                <input type="text" name="txtEntrarLogin"
                       /><br/>
                <label>Senha</label>
                <input type="text" name="txtEntrarSenha"
                       /><br/>
                <input type="submit" value="Entrar" />
          
            </form>
            <div class="centralizar">
                <hr/>
                
            </div>
            <h4>Cadastre-se</h4>
            
            <form action="cadastrar-ok.jsp" method="post">
                </br>
                <label>Login:</label>
                <input type="text" name="txtCadastrarLogin"
                       /><br/>
                <label>Senha</label>
                <input type="text" name="txtCadastrarSenha"
                       /><br/>
                <label>Email</label>
                <input type="text" name="txtCadastrarEmail"
                       /><br/>
                <input type="submit" value="Cadastrar" />
                
            </form>
        </div>
    </body>
</html>

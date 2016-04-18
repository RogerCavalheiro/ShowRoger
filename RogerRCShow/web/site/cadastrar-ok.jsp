<%@page import="dao.JogadorDAO"%>
<%@page import="modelo.Jogador"%>
<%
    String login=request.getParameter("txtCadastrarLogin");
    String senha=request.getParameter("txtCadastrarSenha");
    String email=request.getParameter("txtCadastrarEmail");

    Jogador jogador=new Jogador();

    jogador.setLogin(login);
    jogador.setSenha(senha);
    jogador.setEmail(email);
    
    JogadorDAO dao= new JogadorDAO();
    dao.incluir (jogador);
    
    %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Cadastro realizado com sucesso</h1>
        <a href="index.jsp">Voltar</a>
    </body>
</html>

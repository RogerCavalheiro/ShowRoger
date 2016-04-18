<%@page import="modelo.Jogador"%>
<%@page import="java.util.List"%>
<%@page import="dao.PerguntaDAO"%>
<%@page import="modelo.Pergunta"%>
<%@page import="modelo.Jogo"  %>
<%
    Jogador jogador = (Jogador)session.getAttribute("jogador");
    Jogo jogo = new Jogo();
    
    PerguntaDAO perg = new PerguntaDAO();
    
    List<Pergunta> lista= perg.listar();
    jogo.setPerguntas(lista);
    Pergunta pergunta = jogo.getPerguntas().get(0);
    session.setAttribute("jogo",jogo);
    %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
          <link rel="stylesheet" href="css/estilo.css"/>
    </head>
    <body>
        <div class="pergunta">
              
            <h4 class="enunciado"><%=pergunta.getEnunciado()%></h4>
            <div class="opcoes">
                <form action="fim.jsp" method="post">
                    <input type="radio" value="A" name="rdoPergunta" />
                    <%=pergunta.getA()%><br/>
                    <input type="radio" value="B" name="rdoPergunta" />
                   <%=pergunta.getB()%><br/>
                    <input type="radio" value="C" name="rdoPergunta" />
                    <%=pergunta.getC()%><br/>
                    <input type="radio" value="D" name="rdoPergunta" />
                   <%=pergunta.getD()%><br/>
                    <hr/>
                    <input type="submit" value="confirmar" />
                     <input type="submit" value="pulou" /><%=jogo.getPulos()%>
                      <input type="submit" value="parar" />
                </form>
                
            </div>
        </div>
        <div class="painelUsuario">
           <%=jogador.getLogin()%><br />
           
            <%=jogo.getPontuacao()%>
            %> errar<br/>
            <%=jogo.getPontuacao()%> parar<br/>
            <%=jogo.getPontuacao()%>acertar<br/>
            
            
        </div>
        
    </body>
</html>
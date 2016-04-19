<%@page import="modelo.Jogador"%>
<%@page import="java.util.List"%>
<%@page import="dao.PerguntaDAO"%>
<%@page import="modelo.Pergunta"%>
<%@page import="modelo.Jogo"  %>
<%
    Jogo jogo = new Jogo();
    if(request.getParameter("btnConfirmar")!=null){
        out.print("Foi o Confirmar");
    } else{
        if (request.getParameter("btnPular")!=null){
            out.print("Aqui é pular");
        }else
            if(request.getParameter("btnParar")!=null){
        out.print("Aqui é parar");
            }else{
                jogo.iniciar();
            // Trecho execultado quando eu acesso
            //o jogo pela primeira vez - PERGUNTA 01
    
//    PerguntaDAO pergDAO = new PerguntaDAO();
  //  List<Pergunta> lista = pergDAO.listar();
    //jogo.setPerguntas(lista);
    
    session.setAttribute("jogo",jogo);
    Pergunta pergunta = jogo.getPerguntas().get(0);
    // Até qui - primeira vez
            }
    }
   
    
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
                <form action="pergunta.jsp" method="post">
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
                    <input type="submit" value="pulou" name="btnConfirmar" /><%=jogo.getPulos()%>
                      <input type="submit" value="parar" name="btnPular" />(3)
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

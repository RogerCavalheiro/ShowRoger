<%@page import="modelo.Pergunta"%>
<%@page import="java.util.List"%>
<%@page import="dao.PerguntaDAO"%>
<%@include file="../cabecalho.jsp"%>
<!-- gambiarra pra alinhar o bot�o a esquerda-->
<style>
    <%
    PerguntaDAO dao = new PerguntaDAO();
    
    List <Pergunta> perguntas;

    if(request.getParameter("txtFiltro")!=null && request.getParameter("txtFiltro")!="")
    {
        String txtFiltro = request.getParameter("txtFiltro");
        perguntas = dao.listar(txtFiltro);
    }
    else
    {
        perguntas = dao.listar();
    }
    %>
    .direita
            {
                text-align: right;
                padding-right: 10%;               
            }
</style>
<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text">
            <h4>Pergunta</h4>
            <!-- Colored mini FAB button -->
            <div class="direita">
                <a href="add.jsp">
                    <button class="mdl-button mdl-js-button mdl-button--fab mdl-button--mini-fab mdl-button--colored">
                         <i class="material-icons">add</i>
                    </button>  
                </a>
            </div>

            <table class="mdl-data-table mdl-js-data-table">
                <thead>
                    <tr>

                        <th>ID</th>
                        <th>Enunciado</th>
                        <th>Categoria</th>
                        <th>Resposta Certa</th>
                        <th>Nivel</th>
                        <th>Resposta A</th>
                        <th>Resposta B</th>
                        <th>Resposta C</th>
                        <th>Resposta D</th>
                    </tr>
                </thead>
                <tbody>
                    
                         <%
                    for (Pergunta pergunta:perguntas) {
                %>
                <tr>
                        <th><%=pergunta.getId() %></th>
                <tr>
                        <th><%=pergunta.getEnunciado()%></th>
                                        <tr>

                        <th><%=pergunta.getCategoria()%></th>
                                        <tr>

                        <th><%=pergunta.getCerta()%></th>                <tr>

                        <th><%=pergunta.getNivel()%></th>                <tr>

                        <th><%=pergunta.getA()%></th>
                  <tr>
                      <th><%=pergunta.getB()%></th>                <tr>

                        <th><%=pergunta.getC()%></th>                <tr>

                        <th><%=pergunta.getD()%></th>                <tr>

                         
                        <th></th>
                        <td>
                           
                            <div id="ttupd" class="icon material-icons">
                                <i class="material-icons"><a href="upd.jsp?idpergunta=<%=pergunta.getId()%>">update</a></i>
                            </div>
                            <div class="mdl-tooltip" for="ttupd">
                                Atualizar
                            </div>
                            
                            <div id="ttdel" class="icon material-icons">
                                <i class="material-icons"><a href="del-ok.jsp?idpergunta=<%=pergunta.getId()%>">delete</a></i>
                            </div>
                            <div class="mdl-tooltip" for="ttdel">
                                Excluir
                            </div>
                            
                        </td>
                    <%}%>
                    </tr>
                   
                </tbody>
            </table>   
        </div>

    </div>

</section>

<%@include file="../rodape.jsp"%>


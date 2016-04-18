<%@page import="dao.CategoriaDAO"%>
<%@page import="modelo.Categoria"%>
<%@include file="../cabecalho.jsp"%>
<%
    String nome= request.getParameter("txtNome");
    
    Categoria categoria=new Categoria();

    categoria.setNome(nome);
   
    CategoriaDAO dao= new CategoriaDAO();
    
    dao.incluir (categoria);
    %>
<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text ">
            <h4>Categoria - Cadastrar</h4>
            <p>Categoria cadastrada com sucesso.</p>
            <a href="list.jsp"><i class="material-icons">list</i></a>
            
        </div>

    </div>

</section>

<%@include file="../rodape.jsp"%>


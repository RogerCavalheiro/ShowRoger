<%@page import="modelo.Categoria"%>
<%@page import="dao.PerguntaDAO"%>
<%@page import="modelo.Pergunta"%>
<%@include file="../cabecalho.jsp"%>

<%
    String enunciado= request.getParameter("txtEnunciado");
    Integer categoria= Integer.parseInt(request.getParameter("selCategoria"));
    String rc=request.getParameter("txtRc");
    
    Integer nivel= Integer.parseInt(request.getParameter("txtNivel"));
    
    String a=request.getParameter("txtA");
    String b=request.getParameter("txtB");
    String c=request.getParameter("txtC");
    String d=request.getParameter("txtD");
   

    Pergunta pergunta=new Pergunta();
    
    pergunta.setA(a);
    pergunta.setB(b);
    pergunta.setC(c);
    pergunta.setD(d);
    pergunta.setEnunciado(enunciado);
    pergunta.setNivel(nivel);
    pergunta.setCerta(rc);
    Categoria Ocategoria = new Categoria();
    Ocategoria.setId(categoria);
    pergunta.setCategoria(Ocategoria);
    
    PerguntaDAO dao= new PerguntaDAO();

    dao.incluir (pergunta);
    %>
<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text ">
            <h4>Pergunta - Cadastrar</h4>
            <p>Pergunta cadastrada com sucesso.</p>
            <a href="list.jsp"><i class="material-icons">list</i></a>
            
        </div>

    </div>

</section>

<%@include file="../rodape.jsp"%>


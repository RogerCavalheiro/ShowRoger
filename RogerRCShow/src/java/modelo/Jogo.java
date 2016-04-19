/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import dao.PerguntaDAO;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author paton
 */
public class Jogo {
    private List<Pergunta> perguntas;
    private Integer pontuacao;
    private Integer pulos;
    
    public Jogo()
    {
        this.pulos=3;
        this.pontuacao = 0;
    }

    public List<Pergunta> getPerguntas() {
        return perguntas;
    }

    public void setPerguntas(List<Pergunta> perguntas) {
        this.perguntas = perguntas;
    }

    public Integer getPontuacao() {
        return pontuacao;
    }

    public void setPontuacao(Integer pontuacao) {
        this.pontuacao = pontuacao;
    }

    public Integer getPulos() {
        return pulos;
    }

    public void setPulos(Integer pulos) {
        this.pulos = pulos;
    }
    
    public void execPulo(){
        this.pulos=pulos-1;
    }
    
    public Integer acertouP(){
        return pontuacao+500;
    }
    public void iniciar(){
        // carrega as perguntas
        try{
        PerguntaDAO dao = new PerguntaDAO();
        this.setPerguntas(dao.listar());
        }
        catch (Exception ex) {
            Logger.getLogger(Jogo.class.getName()).log(Level.SEVERE,null,ex);
        
        }
    }
    public boolean confirmar(String opcaomarcada){
        if(opcaomarcada.equals(this.getPerguntas().get(0).getCerta()))
        {
            //exclue a pergunta atual
            this.getPerguntas().remove(0);
            this.setPontuacao(this.acertouP());
            return true;
        }
        else{
            return false;
        }
        }
        
    
         public void Pontuacao(Integer pontuacao){
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
    }
    
    public Integer AcertouP(){
        return pontuacao * 2;
    }
    public Integer ErrouP(){
        return pontuacao / 3;
    }
    public Integer ParouP(){
        return pontuacao;
    }
    
}

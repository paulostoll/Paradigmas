/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.AcessoFacebook;
import View.ViewT9;

/**
 *
 * @author Stoll
 */
public class ControllerT9 {
    private AcessoFacebook model;
    private ViewT9 view;
    
    public ControllerT9(ViewT9 view){
        this.view = view;
    }
    
    public void token(String token){
        model = new AcessoFacebook(token);
    }
    
    public void nomeUsuario(){
        view.pegarTextoUsuario().setText("Usuario: " + model.pegarNomeUsuario());
    }
    
    public void procurarUsuario(){
        model.pesquisar(view.pegarPesquisa().getText(),view.pegarTabela());
    }
    public void adicionarNaTabela(){
        
    }
}

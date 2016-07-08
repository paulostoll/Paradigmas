/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import com.restfb.*;
import com.restfb.types.User;
import java.util.ArrayList;
import javax.swing.JTable;

/**
 *
 * @author Stoll
 */
public class AcessoFacebook {
    private final DefaultFacebookClient cliente;
    private ArrayList<User> lista;
    
    public AcessoFacebook(String token){
        cliente = new DefaultFacebookClient(token);
        
    }
    //Teste - Remover
    public String pegarNomeUsuario(){
        User user = cliente.fetchObject("me", User.class);
        return user.getName();
    }
    
    public void pesquisar(String nome, Tabela tabela){
        Connection<User> publicSearch =  cliente.fetchConnection("search", User.class,
    Parameter.with("q", nome), Parameter.with("type", "user"));
        lista = new ArrayList<User>();
        lista.addAll(publicSearch.getData());        
        for(int i = 0; i<20; i++)
            tabela.addTabela(lista.get(i));
    }
}

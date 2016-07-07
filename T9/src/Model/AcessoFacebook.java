/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import com.restfb.*;
import com.restfb.types.User;

/**
 *
 * @author Stoll
 */
public class AcessoFacebook {
    private final DefaultFacebookClient cliente;
    
    public AcessoFacebook(String token){
        cliente = new DefaultFacebookClient(token);
        
    }
    //Teste - Remover
    public void pegarUsuario(){
        User user = cliente.fetchObject("me", User.class);
        System.out.println(user.getName() + " " + user.getBirthday());
    }
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bolacha;

/**
 *
 * @author Stoll
 */
public class BolachaRedonda extends Bolacha{
    Ponto a = new Ponto();
    double raio;
    public BolachaRedonda(double x, double y, double raio){
        a.mudaPonto(x, y);
        this.raio = raio;
    }
    
    public double area(){
        return Math.PI * raio * raio;
    }
    
    public String tipo(){
        return "Tipo: Redonda";
    }
}

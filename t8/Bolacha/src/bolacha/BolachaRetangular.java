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
public class BolachaRetangular extends Bolacha{
    Ponto a = new Ponto();
    Ponto b = new Ponto();
    Ponto c = new Ponto();
    Ponto d = new Ponto();
    
    public BolachaRetangular(double x, double y, double comp, double alt){
        a.mudaPonto(x, y);
        b.mudaPonto(x + comp, y);
        c.mudaPonto(x, y + alt);
        d.mudaPonto(x + comp, y + alt);
    }
    
    public double area(){
        return Ponto.distancia(a, b) * Ponto.distancia(a,c);
    }
    
    public String tipo(){
        return "Tipo: Retangular";
    }
}

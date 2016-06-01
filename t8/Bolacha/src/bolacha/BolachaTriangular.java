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
public class BolachaTriangular extends Bolacha{
    Ponto a = new Ponto();
    Ponto b = new Ponto();
    Ponto c = new Ponto();
    
    public BolachaTriangular(double x1, double y1, double x2, double y2, double x3, double y3){
        a.mudaPonto(x1, y1);
        b.mudaPonto(x2, y2);
        c.mudaPonto(x3, y3);
    }
    
    public double area(){
        double ab = Ponto.distancia(a, b);
        double ac = Ponto.distancia(a, c);
        double bc = Ponto.distancia(b, c);
        double S = (ab + ac + bc)/2;
        return Math.sqrt(S * (S - ab) * (S - ac) * (S - bc));
    }
    
    public String tipo(){
        return "Tipo: Triangular";
    }
}

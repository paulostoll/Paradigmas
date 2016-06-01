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
public class Ponto {
    private double x, y;
    
    public Ponto(){
        x = 0;
        y = 0;
    }
    public Ponto(double _x, double _y){
        x = _x;
        y = _y;
    }
    
    public void mudaPonto(double _x, double _y){
        x = _x;
        y = _y;
    }
    
    public void posicao(){
        System.out.printf("(%.2f,%.2f)\n", x, y);
    }
    
    public void deslocar(){
        x++;
        y++;
    }
    public void deslocar(double dx){
        x = dx;
    }
    public void deslocar(double dx, double dy){
        x += dx;
        y += dy;
    }
    public static double distancia(Ponto p1, Ponto p2){
        double x1 = p1.x - p2.x;
        double y1 = p1.y - p2.y;
        return Math.sqrt((x1 * x1) + (y1 * y1));
    }
}
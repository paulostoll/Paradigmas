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
public class Principal {
    /**
     * @param args the command line arguments
     */
    //private int aleatorio;
    public static void main(String[] args) {
        // TODO code application logic here
        java.util.Random a = new java.util.Random();
        /*BolachaRetangular ret = new BolachaRetangular(0,10,10,10);
        BolachaTriangular tri = new BolachaTriangular(0,0,10,10,0,10);
        BolachaRedonda red = new BolachaRedonda(20,20,10);
        
        BolachaRetangular vet[] = new BolachaRetangular[50];
        
        for(int i=0;i<50;i++){
            vet[i] = new BolachaRetangular(0,0,a.nextInt(10)+1,a.nextInt(10)+1);
        }
        double maior = vet[0].area();
        for(BolachaRetangular n : vet){
            System.out.println(n.area());
            if(maior<n.area())
                maior = n.area();
        }
        System.out.println("Maior area: " + maior + "\n");*/
        double maior = 0;
        int index = 0;
        Bolacha v[] = new Bolacha[50];
        for(int i=0; i < 50; i++){
            int tipo = a.nextInt(3);
            switch(tipo){
                case 0 : v[i] = new BolachaRetangular(0,0,(a.nextDouble()*8)+2,(a.nextDouble()*8)+2);
                break;
                case 1 : v[i] = new BolachaTriangular((a.nextDouble()*18)+2,(a.nextDouble()*18)+2,(a.nextDouble()*18)+2,(a.nextDouble()*18)+2,(a.nextDouble()*18)+2,(a.nextDouble()*18)+2);
                break;
                case 2 : v[i] = new BolachaRedonda(0,0,(a.nextDouble()*3.6418)+2);
            }
            if(v[i].area() > maior){
                maior = v[i].area();
                index = i;
            }
            //n = new BolachaRetangular(0,0,a.nextInt(10)+1,a.nextInt(10)+1);
            System.out.println(v[i].area() + ". " + v[i].tipo() + "\n");
        }
        System.out.print("Maior area: " + v[index].area() +". " + v[index].tipo() +"\n");
        
        
        //System.out.println(a.nextInt());
    }
}

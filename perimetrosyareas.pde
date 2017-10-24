Figura Ate;
Figura Mariana;
Figura Faraam;
Figura Beto;
Figura Eraie;
Figura Jacquie;
Figura Anakin;
Figura Lobo;
float apotema;
ArrayList <Figura> Figuras;
//triangulo, cuadrado, retancgulo,ciculo, pentagono, hexagono, Heptagono, octagono);


void setup(){
  size(680,500);
  background(0);
  
  smooth();
  Ate= new Triangulo(5,5,5,5,5);
  Mariana= new Cuadrado(5);
  Faraam= new Rectangulo(10,5);
  Beto= new Circulo(8);
  Eraie= new Pentagono(8,4);
  Jacquie= new Hexagono(8,4);
  Anakin= new Heptagono(8,4);
  Lobo= new Octagono(8,4);
  Figuras = new ArrayList();
  Figuras.add(Ate);
  Figuras.add(Mariana);
  Figuras.add(Faraam);
  Figuras.add(Beto);
  Figuras.add(Eraie);
   Figuras.add(Jacquie);
   Figuras.add(Anakin);
   Figuras.add(Lobo);
   
   
   
   
   int caras=0, centrox=0, centroy=0, alto=0;
   int ancho=0;
  noStroke();
   
   /////
   float anguloi=0;
   
   fill(175,0,0);
   
  
   
   centrox=100;
   centroy=100;
   ancho=50;
   anguloi=-90;
   alto=50;
   caras=3;
   poligono2(caras, centrox,  centroy, ancho,  alto, anguloi);
   
   centrox=200;
   centroy=100;
   anguloi=-45;
   ancho=50;
   alto=50;
   caras=4;
   poligono2(caras, centrox,  centroy, ancho,  alto, anguloi);
   
   centrox=300;
   centroy=100;
   anguloi=-45;
   ancho=100;
   alto=50;
   caras=4;
   poligono2(caras, centrox,  centroy, ancho,  alto, anguloi);
   
   centrox=500;
   centroy=100;
   anguloi=-90;
   ancho=80;
   alto=80;
   caras=5;
   poligono2(caras, centrox,  centroy, ancho,  alto, anguloi);
   alto=80;
   ancho=80;
   centrox=400;
   centroy=100;
   ellipse(centrox,centroy,ancho,alto);
   
   centrox=100;
   centroy=200;
   anguloi=-90;
   ancho=80;
   alto=80;
   caras=6;
   poligono2(caras, centrox,  centroy, ancho,  alto, anguloi);
   
   centrox=200;
   centroy=200;
   anguloi=-90;
   ancho=80;
   alto=80;
   caras=7;
   poligono2(caras, centrox,  centroy, ancho,  alto, anguloi);
   centrox=300;
   centroy=200;
   anguloi=-90;
   ancho=80;
   alto=80;
   caras=8;
   poligono2(caras, centrox,  centroy, ancho,  alto, anguloi);
   
    println(Ate.perimetro());
  println(Ate.area());
  println(Mariana.perimetro());
  
  println(Mariana.area());

  println(Faraam.perimetro());
  
  println(Faraam.area());
  println(Beto.perimetro());
  
  println(Beto.area());
  println(Eraie.perimetro());
  println(Eraie.apotema());
  println(Eraie.area());
  
  println(Jacquie.perimetro());
  println(Jacquie.apotema());
  println(Jacquie.area());
  
  println(Anakin.perimetro());
  println(Anakin.apotema());
  println(Anakin.area());
  
  println(Lobo.perimetro());
  println(Lobo.apotema());
  println(Lobo.area());
   
}

void draw(){

 
 
  //figuras geométricas
}



void poligono2(float caras, float centrox, float centroy, float ancho, float alto, float anguloi){
  float angulo=360/caras;
  ancho=ancho/2;
  alto=alto/2;
  beginShape();
  for (int i=0; i<caras; i++){
   vertex(centrox+ancho*cos(radians(anguloi)+radians(angulo*i)),centroy+alto*sin(radians(anguloi)+radians(angulo*i))); 
  }
  endShape();
}
  
  
  interface Figura {
    float perimetro();
    float area();
     float apotema();
    
    
  }
  class Triangulo implements Figura{
    float c1,c2,c3,b,h;
    
    Triangulo(float b_, float h_, float c1_, float c2_, float c3_){
      b=b_;
      h=h_;
      c1=c1_;
      c2=c2_;
      c3=c3_;
      
    }
    
    
   
    float perimetro(){
      return c1+c2+c3;
    }
    
    float area(){
      return ((b*h)/2);
    }
    float apotema(){
    return 0;
    }
  }
  
  class Cuadrado implements Figura{
  float l;
  
  Cuadrado(float l_){
      l=l_;
  }
  
    
  
  
    float perimetro(){
      return l*4;
    }
    float area(){
    return l*l;  
    }
    float apotema(){
    return 0;
    }
  }
  
  class Rectangulo implements Figura{
  float l,a;
  
  Rectangulo(float l_, float a_){
      l=l_;
      a=a_;
  }
  
    float perimetro(){
      return (l*2)+(a*2);
    }
    float area(){
    return l*a;  
    }
    float apotema(){
    return 0;
    }
    
    
    
  }
  class Circulo implements Figura{
  float r;
  
  Circulo(int r_){
      r=r_;
     
  }
  
    float perimetro(){
      return (TWO_PI*r);
    }
    float area(){
    return (PI)*(r*r);
    }
    float apotema(){
    return 0;
    }
    
    
  
  
  }
  class Pentagono implements Figura{
  float c1,c2;
  
  Pentagono(float c1_, float c2_) {
      c1=c1_;
      c2=c2_;
      
  }
      
     
  
  
    float perimetro(){
      return (c1*5);
    }
    float apotema(){
    return sqrt((c1*c1)-(c2*c2));
    }
    float area(){
      float perimetro =c1*5; 
     float apotema= sqrt((c1*c1)-(c2*c2));
     
    return ((perimetro*apotema)/2);
    
    
    
  }
  
  }
   class Hexagono implements Figura{
  float c1,c2;
  
  Hexagono(float c1_, float c2_) {
      c1=c1_;
      c2=c2_;
      
  }
      
     
  
  
    float perimetro(){
      return c1*6;
    }
    float apotema(){
    return sqrt((c1*c1)-(c2*c2));
    }
    float area(){
      float perimetro =c1*6; 
     float apotema= sqrt((c1*c1)-(c2*c2));
     
    return ((perimetro*apotema)/2);
    
    
    
  }
  
  }
  
   class Heptagono implements Figura{
  float c1,c2;
  
  Heptagono(float c1_, float c2_) {
      c1=c1_;
      c2=c2_;
      
  }
      
     
  
  
    float perimetro(){
      return c1*7;
    }
    float apotema(){
    return sqrt((c1*c1)-(c2*c2));
    }
    float area(){
      float perimetro =c1*7; 
     float apotema= sqrt((c1*c1)-(c2*c2));
     
    return ((perimetro*apotema)/2);
    
    
    
  }
  
  }
  
  class Octagono implements Figura{
  float c1,c2;
  
  
  Octagono(float c1_, float c2_) {
      c1=c1_;
      c2=c2_;
      
  }
      
     
  
  
    float perimetro(){
      return c1*8;
    }
    float apotema(){
    return sqrt((c1*c1)-(c2*c2));
    }
    float area(){
      float perimetro =c1*8; 
     float apotema= sqrt((c1*c1)-(c2*c2));
     
    return ((perimetro*apotema)/2);
    
   
  }
  
  
  }
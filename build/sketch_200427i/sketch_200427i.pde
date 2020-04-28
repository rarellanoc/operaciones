 void setup() {
  
  
    size(800,800);
  background(22);
  fill(22);
  strokeWeight(5);
  stroke(255,0,0);
  
 }
  
  
     float x = 2.0;
    float y = 120.0;
    float separacion_x = 25.0;
    int limite = 400;
    int px = 100;
    int altura = 400;
    float desplazamiento_y = 15.0;
    void draw() {
     if ( x >= limite ) {
     x = limite;
    } else {
       x = x + separacion_x ;
       y = y + desplazamiento_y;
       line(px + x ,y/2.0 , px + x , altura +
    y/2.0 );
    }
    }
    
    
    

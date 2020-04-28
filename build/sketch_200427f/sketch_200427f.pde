  float direccionC;
  float direccionP;
  
  void setup() {
  
  
    size(800,800);
  background(22);
  fill(22);
  strokeWeight(5);
  stroke(255,0,0);
 
  int tPunto =11;
    float direccionC ;
    float direccionP;
    int snap ;
    direccionC = 0.009;
    direccionP = radians(70);
    snap = 0;
    semilla(tPunto,300, width/2, height);
  }
  
  
  
    void semilla(float tPunto, float angulo, float x, float y) {
    if (tPunto > 0.5) {
       float r = random(1.0);
       if (r > 0.03 && r < 0.1 ){
       ellipse(x,y, tPunto, tPunto);
       int nuevox = int(x + cos(angulo) * tPunto);
       int nuevoy = int(y + sin(angulo) * tPunto);
       semilla(tPunto * 0.8, angulo - direccionC, nuevox, nuevoy);
       semilla(tPunto * 0.6, angulo - direccionP, nuevox, nuevoy);
       semilla(tPunto * 0.6, angulo + direccionP, nuevox, nuevoy);
       }
       else if (r> 0.03) {
       //point(x,y);
       ellipse(x,y, tPunto, tPunto);
       int nuevox = int(x + cos(angulo) * tPunto);
       int nuevoy = int(y + sin(angulo) * tPunto) ;
       semilla(tPunto * 0.99, angulo - direccionC, nuevox, nuevoy);
        } else {
       ellipse(x,y, tPunto, tPunto);
       int nuevox = int(x + cos(angulo) * tPunto);
       int nuevoy = int(y + sin(angulo) * tPunto);
       semilla(tPunto * 0.8, angulo - direccionC, nuevox, nuevoy);
       semilla(tPunto * 0.6, angulo - direccionP, nuevox, nuevoy);
    }
    } }

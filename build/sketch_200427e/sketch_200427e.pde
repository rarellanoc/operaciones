void setup() {
  
  
    size(800,800);
  background(22);
  fill(22);
  strokeWeight(5);
  stroke(255,0,0);
  
  
  int nx = 100;
int ny = 100;
int z = 50;
int posx =width/2 - nx/2;
int posy = height - 100;
//baseline
int x = -nx;
int x2 = x*2;
int y = -ny - (ny / 2);
line(y+posx,y+posy, posx,posy);
line(posx,posy, -x2+posx,x+posy);
line(y+posx,y+posy,-x2+y+posx,x+y+posy);
line(-x2+y+posx,x+y+posy,-x2+posx,x+posy);
//abajo
line(y+posx,y+posy+z, posx,posy+z);
line(posx,posy+z, -x2+posx,x+posy+z);
//verticales
line(y+posx,y+posy, y+posx,y+posy+z);
line(posx, posy, posx, posy+z);
line(-x2+posx,x+posy, -x2+posx,x+posy+z);

}

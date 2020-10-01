void setup() {
  
  
background(22);
size(800,600);
stroke(255,255,0);
strokeWeight(3);

int  center_x = width/2; int  center_y = height/2;
int  size = 200;

ellipseMode(CENTER);
ellipse(center_x, center_y, size,size);
line(center_x - size/2, center_y, center_x + size/2, center_y); rectMode(CENTER);
rect(center_x,center_y, size * 2,size * 2 );


//OOP

Same cuadrado = new Same(center_x, center_y, size * 4, "quad");
Same circulo = new Same(center_x, center_y, size, "circle");
Same linea= new Same(center_x, center_y, size * 4, "linea_horizontal");
cuadrado.display(); 
circulo.display(); 
linea.display();
}



class Same {
    int x;
    int y;
    int siz; String tipo;

    Same(int x_, int y_, int size, String type) {
    x = x_;
    y = y_;
    siz = size; tipo = type;
    }

    void display() {
        if (tipo== "quad") {
        rectMode(CENTER); rect(x,y, siz,siz);
        } else if (tipo == "circle") {
        ellipseMode(CENTER); ellipse(x, y, siz,siz);
        } else if (tipo == "linea_horizontal") { line(x - siz/2, y, x + siz/2, y);
        } else {
        strokeWeight(3); point(x,y);
        }
        
        } 
      
   }

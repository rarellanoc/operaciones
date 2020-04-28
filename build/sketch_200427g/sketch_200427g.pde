    
      PImage img;
      
     void setup() {
  
  
    size(1024,1024);
 

    img = loadImage("lady_robot_oil_canvas_yellow.jpg");
    int x=0;
    int y=0;
    int scale = 8;
    for(int j=0; j<height/(2*scale); j++) {
      y = j*2*scale;
     for(int i=0; i<width/(2*scale)+2*scale; i++) {
    x = (i*2*scale)-2*scale;
    int loc = x + 2*scale + y * img.width;
    float r = red(img.pixels[loc]);
    float g = green(img.pixels[loc]);
    float b = blue(img.pixels[loc]);
    fill(r, g,b);
    stroke(r,g,b);
     beginShape();
      vertex(x,y);
      vertex(2*scale+x,y);
      vertex(2*scale+x,1*scale+y);
      vertex(3*scale+x,1*scale+y);
      vertex(3*scale+x,2*scale+y);
      vertex(1*scale+x,2*scale+y);
      vertex(1*scale+x,1*scale+y);
      vertex(x,1*scale+y);
      endShape(CLOSE);
    } }
    }
    
    //hola

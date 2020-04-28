   PFont font;
   
   void setup() {
  
  
    size(800,800);
  background(22);
  fill(255,0,0);
  strokeWeight(6);
  stroke(255,0,0);
  

    font = loadFont("ArialMT-48.vlw");
    //String[] fontList = PFont.list();
    //println(fontList);
    textFont(font, 64);
    text("choice", 100, 150);
    textFont(font,32);
    text("life is", 110, 200);
    
   }

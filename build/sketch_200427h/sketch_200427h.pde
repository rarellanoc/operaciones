float n = 0;
    float aumento = 0.1;
    float base_left = 100;
    float base_right = 100;
    void setup() {
      size(640,640);
      background(23);
      noFill();
    //fill(255, 50, 10, 140);
      stroke(255, 50, 10, 140);
    strokeWeight(4);
      frameRate(12);
    }
    void draw() {
      background(23);
      base_left = base_left  - aumento;
      base_right = base_right + aumento;
     for (float i=- base_left; i < base_right; i+= 1) {
        float altura = 10 * i;
        float radio = 100 + n;
        float ang = asin(altura / radio);
        float x = cos(ang) * radio;
        int posy = 350;
        int posx = 300;
        // restriccion angulos NaN y excesivos
        if ((ang > 0 || ang < 0) && (ang >= - 1.05 && ang <= 1.25 )) {
      beginShape();
        vertex(posx + (10 * i) , posy + x);
        vertex(posx + (10 * i) , posy + x + 100);
        vertex(posx + (10 * -i) , posy + 80 - x + 100);
        vertex(posx + (10 * -i) , posy + 80 - x);
        endShape(CLOSE);
    } }
    }



void setup() {
  
  
    size(800,800);
  background(22);
  fill(22);
  strokeWeight(5);
  stroke(255,0,0);
  
int end_line = 800;
int dist_observador_del_plano = 282;
int obsx = end_line + dist_observador_del_plano;
int obsy = 202;
int step = 30;
int vertical_x = 800;
int altura = 480;

//line(obsx -2, obsy-2, obsx +3, obsy+3);
//line(obsx-2, obsy + 3, obsx+3, obsy-2);

int baseline_y = height - altura;
  strokeWeight(2);
  line(end_line, baseline_y + altura, 100, baseline_y + altura);
  int distance = (vertical_x-100)/ step;
  float op_acumulator = 0;
  for(int i=0; i<distance; i++) {
    // marcas
    //line(100 + i* step, 200 + altura, 100 + i *step, 205 + altura);
    //lineas proyeccion
    //line(100 + i* step, 200 + altura, obsx, obsy);
    //soh cah toa
    float ad = dist_observador_del_plano + (step * (distance -i));
    float op = altura;
    float ang = tan(op / ad);
    float ad_small = (step * (distance -i));
    float op_small = ad_small * abs(atan(ang));
    //println(op_small);
    line(0,baseline_y + altura - op_small,width,  baseline_y + altura - op_small);
} }
  
  


int s, sep;

void setup() {
  
  
    size(800,800);
  background(22);
  fill(22);
  strokeWeight(5);
  stroke(255,0,0);
  
int real_cant = 8;
int cant = real_cant /2;
s = 30;
sep = s + 10;
 for (int i=0; i< cant; i++) {
   for(int j=0; j < cant; j++) {
     rect(width/2 + sep + i * (sep * (sep/s)), height/2 + sep + j * (sep * (sep/s)), s,s);
     rect(width/2 - sep - i * (sep * (sep/s)), height/2 + sep + j * (sep * (sep/s)), s,s);
     rect(width/2 - sep - i * (sep * (sep/s)), height/2 - sep - j * (sep * (sep/s)), s,s);
     rect(width/2 + sep + i * (sep * (sep/s)), height/2 - sep - j * (sep * (sep/s)), s,s);
} }
  
  
}

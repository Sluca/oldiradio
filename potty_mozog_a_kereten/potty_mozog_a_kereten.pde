PImage est;

class Keret {
float x=75;
float y=75;
float sebx=0;
float seby=0;

void fuss (){
  x=x+sebx;
  y=y+seby;
    if (x>925) {
   x = 925;
   sebx=0;
   seby=3;
 }
 if (y>625){
   y = 625;
   sebx=-3;
   seby=0;
 }
 if (x<75){
   x = 75;
   sebx=0;
   seby=-3;
 }
  if (y<75){
    y = 75;
    sebx=3;
    seby=0;
  }
}
void mutasd (){
  fill (#00DB89);
  ellipse (x,y,10,10);
}
  
}

Keret keret=new Keret();

void setup () {
  size (1000,700);
  est= loadImage ("Az_est.png");
  keret.x=75;
  keret.y=75;
  keret.sebx=3;
  keret.seby=0;
  

}

void draw (){
  background (est);
  keret.fuss ();
  keret.mutasd ();
}
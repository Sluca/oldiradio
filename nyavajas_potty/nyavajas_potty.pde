class Potty { 
float x=0;
float y=0;
int kpx=0;
int kpy=0;
float r=0;
float sugar=0;

void mozogj(){
  r=r+0.02;
}

void kirajzol(){
  
  x=kpx+sugar*cos(r);
  y=kpy-sugar*sin(r);
  fill(#000000);
  ellipse(x,y,10,10); 
 
}
}

Potty potty= new Potty();

void setup() {
  size(1000, 700);
potty.kpx=width/2;
potty.kpy=height/2;
potty.sugar=90;
potty.r=0.02;
}

void draw(){
  background(#FFFFFF);

potty.mozogj();
potty.kirajzol();
}
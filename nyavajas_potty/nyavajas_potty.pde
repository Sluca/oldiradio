PImage est;

class Potty { 
  float x=0;
  float y=0;
  float kpx=0;
  float kpy=0;
  float r=0;
  float sugar=0;

  void mozogj() {
    r=r+0.02;
    if (x>width/2+68 && kpx==width/2){
      kpx=width/2+140;
      r=3.8;
    }
    if(x<width/2+68 && kpx==width/2+140){
      kpx=width/2;
      r=0.75;
    }
   if(x>width/2-68 && kpx==width/2){
   kpx=width/2-140;
   r=1.7;
   }
   if(x<width/2-68 && kpx==width/2-140){
     kpx=width/2;
     r=2.6;
   }
  }

  void kirajzol() {
    x=kpx+sugar*cos(r);
    y=kpy+sugar*sin(r);
    fill(#000000);
    ellipse(x, y, 10, 10);
  }
}

Potty potty= new Potty();

void setup() {
  size(1000, 700);
  est = loadImage ("Az_est.png");

  potty.kpx=width/2;
  potty.kpy=height/2;
  potty.sugar=90;
  potty.r=4;
}

void draw() {
  background(est);

  potty.mozogj();
  potty.kirajzol();
}
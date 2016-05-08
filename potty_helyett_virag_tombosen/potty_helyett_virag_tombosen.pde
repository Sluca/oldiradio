PImage est;
PImage viragocska;

class Potty { 
  float x=0;
  float y=0;
  float kpx=0;
  float kpy=0;
  float r=0;
  float sugar=0;

  void mozogj() {
    r=r+0.02;
    // jobb felso
    if (x>width/2+68 && kpx==width/2 && y < height/2) {
      kpx=width/2+140;
      r=3.8;
    }
    // jobb also
    if (x<width/2+68 && x>width/2 && kpx==width/2+140 && y > height/2) {
      kpx=width/2;
      r=0.75;
    }
    // bal also
    if (x<width/2-68  && kpx==width/2 && y > height/2) {
      kpx=width/2-140;
      r=0.75;
    }
    // bal felso
    if (x>width/2-68 && x<width/2 && kpx==width/2-140 && y < height/2) {
      kpx=width/2;
      r=3.9;
    }
  }

  void kirajzol() {
    x=kpx+sugar*cos(r);
    y=kpy+sugar*sin(r);
    image (viragocska, x, y, 15, 15);
  }
}

Potty[] viragok= new Potty[10];
Potty[] oldalso_viragok= new Potty[32];
Potty potty= new Potty();

void setup() {
  size(1000, 700);
  est = loadImage ("Az_est.png");
  viragocska = loadImage ("viragocska2.png");
  
  potty.kpx=width/2;
  potty.kpy=height/2;
  potty.sugar=90;
  potty.r=4;

  viragok[0]= new Potty();
  viragok[1]= new Potty();
  
  while( 
  
}

void draw() {
  background(est);
  //rakjBelePottyoket(pottyok, 1, 6, width/2, height/2, 90, 3.9, 5.6)
 for (viragok, 1, 6, width/2, height/2; 
  90, 3.9, 5.6) {
    viragok.kirajzol();
    viragok.mozogj();
  }
}
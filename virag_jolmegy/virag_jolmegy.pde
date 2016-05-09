PImage est;
PImage viragocska;

class Virag { 
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
  // }
  }

  void kirajzol() {
    x=kpx+sugar*cos(r);
    y=kpy+sugar*sin(r);
    
    image (viragocska, x, y, 15, 15);
  }
}

Virag virag= new Virag();

void setup() {
  size(1000, 700);
  est = loadImage ("virag nelkul_jo hatter.png");
   viragocska = loadImage ("virágfej_atlatszohatter.png");

virag.kpx=width/2;
  virag.kpy=height/2;
  virag.sugar=90;
  virag.r=4;
 
}

void draw() {
  background(est);
  virag.mozogj();
  virag.kirajzol();


}
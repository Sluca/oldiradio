PImage est;
PImage virag;

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
  // }
  }

  void kirajzol() {
    x=kpx+sugar*cos(r);
    y=kpy+sugar*sin(r);
    
    image (virag, x, y, 10, 10);
  }
}

Potty virag= new Potty();

void setup() {
  size(1000, 700);
  est = loadImage ("jo.png");
   virag = loadImage ("viragkisebb.png");

virag.kpx=width/2;
  virag.kpy=height/2;
  virag.sugar=90;
  virag.r=4;
 
}

void draw() {
  background(est);


}
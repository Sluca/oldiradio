PImage est;
PImage viragocska;
int NUM=87;
int NUM2=100;

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
class Keret {
  float x=75;
  float y=75;
  float sebx=0;
  float seby=0;

  void fuss () {
    x=x+sebx;
    y=y+seby;
    if (x>925) {
      x = 925;
      sebx=0;
      seby=5;
    }
    if (y>625) {
      y = 625;
      sebx=-5;
      seby=0;
    }
    if (x<75) {
      x = 75;
      sebx=0;
      seby=-5;
    }
    if (y<75) {
      y = 75;
      sebx=5;
      seby=0;
    }
  }
  void mutasd () {
    image (viragocska, x, y, 30, 30);
  }
}


Keret[] kereten_fut=new Keret[NUM2];
Keret keret=new Keret();
Virag[] viragok= new Virag[NUM];
Virag virag= new Virag();

void rakjBeleViragokat(Virag[] tomb, int indextol, int indexig, float kpx, float kpy, float sugar, float rstart, float rstop) {
  for (int i = indextol; i < indexig; i++) {
    tomb[i] = new Virag();
    tomb[i].kpx = kpx;
    tomb[i].kpy = kpy;
    tomb[i].sugar = sugar;
    int darab = (indexig - indextol + 1);
    float rtavolsag = rstop - rstart;
    tomb[i].r = rstart + i * (rtavolsag / darab);
  }
}


void setup() {
  size(1000, 700);
  est = loadImage ("virag nelkul_jo hatter.png");
  viragocska = loadImage ("virágfej_atlatszohatter.png");

  virag.kpx=width/2;
  virag.kpy=height/2;
  virag.sugar=90;
  virag.r=4;
  
  for (int i=0; i<NUM; i++) {
    viragok[i]=new Virag();
  }
  rakjBeleViragokat(viragok, 0, 10, width/2, height/2, 90, 4, 5.6);
  rakjBeleViragokat(viragok, 11, 43, width/2+140, height/2+140, 90, 6, 1.2);
  rakjBeleViragokat(viragok, 44, 54, width/2, height/2, 90, 0.75, 3.9);
  rakjBeleViragokat(viragok, 55, 87, width/2-140, height/2-140, 90, 3.9, 5.6);
  
  keret.x=75;
  keret.y=75;
  keret.sebx=5;
  keret.seby=0;
  for (int i=0; i<NUM2; i++) {
    kereten_fut[i]=new Keret();
  }
}

void draw() {
  background(est);

  for (int i=0; i<NUM; i++) {
    viragok[i].kirajzol();
    viragok[i].mozogj();
  }
  for (int i=0; i<NUM2; i++) {
    kereten_fut[i].mutasd();
    kereten_fut[i].fuss();
  }
}
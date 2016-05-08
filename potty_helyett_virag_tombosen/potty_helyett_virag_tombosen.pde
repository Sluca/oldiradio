PImage est;
PImage viragocska;
int NUM=10;

class Potty { 
  float x;
  float y;
  float kpx;
  float kpy;
  float r;
  float sugar;

  void kezdoertekek()
  {
    x=0;
    y=0;
    kpx=width/2;
    kpy=height/2;
    r=4;
    sugar=90;
  }

  
  void kirajzol() 
   {
   image (viragocska, x, y, 15, 15);
   }
}

Potty[] viragok = new Potty[NUM];

void setup() {
  size(1000, 700);
  est = loadImage ("Az_est.png");
  viragocska = loadImage ("viragocska2.png");

  

  for (int i=0; i<NUM; i++)
  {
    viragok[i]= new Potty();
    viragok[i].kezdoertekek();
  }
  
  rakjBelePottyoket(viragok, 0,  10, width/2, height/2, 90, 3, 6);
  rakjBelePottyoket(viragok, 11, 43, width/2+140, height/2+140, 90, 10, 30);
  rakjBelePottyoket(viragok, 44, 54, width/2, height/2, 90, 6, 3);
  rakjBelePottyoket(viragok, 55, 87, width/2-140, height/2-140, 90, 30, 10);
}

void draw() {
  background(est);
 for(int i=0; i<NUM; i++){
 viragok[i].kirajzol();
 }
  
  //viragok.mozogj();
}
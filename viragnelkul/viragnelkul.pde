
float r;
float x=75;
float y=625;
float sebx=0;
float seby=-1;
float sebr=0.002;
PImage est;
int c1=90;
int c2=140;
int c3=190;
int c4=240;


void setup() {
 size(1000,700);
  nincsvirag=loadImage("viragok_nelkul.png");
 
}

void draw() {
  background(nincsvirag);
  
  ellipse(width/2+c1*cos(r),height/2-c1*sin(r), 10,10); //belso harom
  fill(#FF2424);
  r=r+sebr;

  if (r>2*PI) {
    r=0.002;
  }
  
  ellipse(width/2-140+c1*cos(r), height/2-c1*sin(r), 10, 10); //belso harom
  fill(#FF2424);
  r=r+sebr;

  if (r>2*PI) {
    r=0.002;
  }
  
  ellipse(width/2+140+c1*cos(r), height/2-c1*sin(r), 10, 10); //belso harom
  fill(#FF2424);
  r=r+sebr;

  if (r>2*PI) {
    r=0.002;
  }
  
   ellipse(width/2+c2*cos(r),height/2-c2*sin(r), 10,10); //masodik kor
  fill(#FF2424);
  r=r+sebr;

  if (r>2*PI) {
    r=0.002;
  }
  
  ellipse(width/2-140+c2*cos(r), height/2-c2*sin(r), 10, 10);//masodik kor
  fill(#FF2424);
  r=r+sebr;

  if (r>2*PI) {
    r=0.002;
  }
  
  ellipse(width/2+140+c2*cos(r), height/2-c2*sin(r), 10, 10); //masodik kor
  fill(#FF2424);
  r=r+sebr;

  if (r>2*PI) {
    r=0.002;
  }
  ellipse(width/2+c3*cos(r),height/2-c3*sin(r), 10,10); //harmadik kor
  fill(#FF2424);
  r=r+sebr;

  if (r>2*PI) {
    r=0.002;
  }
  
  ellipse(width/2-140+c3*cos(r), height/2-c3*sin(r), 10, 10);//harmadik kor
  fill(#FF2424);
  r=r+sebr;

  if (r>2*PI) {
    r=0.002;
  }
  
  ellipse(width/2+140+c3*cos(r), height/2-c3*sin(r), 10, 10); //harmadik kor
  fill(#FF2424);
  r=r+sebr;

  if (r>2*PI) {
    r=0.002;
  }
  ellipse(width/2+c4*cos(r),height/2-c4*sin(r), 10,10); //negyedik kor
  fill(#FF2424);
  r=r+sebr;

  if (r>2*PI) {
    r=0.002;
  }
  
  ellipse(width/2-140+c4*cos(r), height/2-c4*sin(r), 10, 10);//negyedik kor
  fill(#FF2424);
  r=r+sebr;

  if (r>2*PI) {
    r=0.002;
  }
  
  ellipse(width/2+140+c4*cos(r), height/2-c4*sin(r), 10, 10); //negyedik kor
  fill(#FF2424);
  r=r+sebr;

  if (r>2*PI) {
    r=0.002;
  }
  
   ellipse(x,y, 10,10); //ötödik
  fill(#FF2424);
  x=x+sebx;
  y=y+seby;
  //indulj el a (75,75) koordinatabol es menj el a (925,75)be, ha odaertel, valtoztasd meg a sebx 0-ra, a seby 1re, 
  //indulj el lefele, menj el a (925,625) pontba, ott valtoztasd meg a sebx -1-re, a seby 0-ra
  //indulj el lent balra, menj el a (75, 620)ig, ott valtoztasd meg a sebx 0-ra, a seby -1re. 
  //indulj el felfele, menj vissza  a kezdopontba (75,75)
  //kezd ujra
  
 
}
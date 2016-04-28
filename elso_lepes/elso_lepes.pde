float r;
float sebx=0.02;
void setup() {
  size(500, 500);
}

void draw() {
  background(#FFFFFF);
  ellipse(height/2+10*cos(r), width/2-20*sin(r), 10, 10);
  fill(#000000);
  r=r+sebx;

  if (r>2*PI) {
    r=0.02;
  }
}
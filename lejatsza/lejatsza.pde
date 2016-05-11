import processing.sound.*;
SoundFile file;

void setup() {
  size(640, 360);
  background(255);
    
  file = new SoundFile(this, "Bartok_Bela_roman.mp3");
 if (mousePressed){
    file.play();
  }
}      

void draw() {
  
  
}
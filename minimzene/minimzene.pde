import ddf.minim.*;

Minim minim;
AudioPlayer player;
AudioInput input;

void setup()
{
  //let's make the window a little bigger
  size(400,400);

  minim = new Minim(this);
  player = minim.loadFile("Bartok_Bela_roman.mp3");
  input = minim.getLineIn();
}

void draw(){ }

void mousePressed()
{
  player.play();
}

void mouseReleased()
{
  player.close();

  //since close closes the file, we'll load it again
  player = minim.loadFile("song.mp3");
}
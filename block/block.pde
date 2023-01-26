//GLOBAL//
color bgColour = #E5FFA5;

  //init player//
int playerSize = 50; //no = FULL SIZE as rectMode is CENTER
int initPos = playerSize/2;
Player p = new Player(initPos, initPos, playerSize, playerSize);

void setup() {
  size(640, 480);
  frameRate(60);
}

void draw() {
  background(bgColour);
  
  p.drawPlayer();
  p.movePlayer();
}

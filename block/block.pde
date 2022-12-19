//GLOBAL//
color bgColour = #E5FFA5;

  //init player//
int playerSize = 50; //FULL SIZE, centre rect mode half left and half right
int initPos = playerSize/2;
Player p = new Player(initPos, initPos, playerSize, playerSize);

void setup() {
  size(640, 480);
  frameRate(60);
}

void draw() {
  background(bgColour);
  
  println("draw(): calling to draw Player p...");
  p.drawPlayer();
  p.movePlayer();
  
}

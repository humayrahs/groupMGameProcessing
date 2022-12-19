color bgColour = #E5FFA5;
Player p = new Player(50, 50, 50, 50);

void setup() {
  size(640, 480);
  frameRate(60);
}

void draw() {
  background(bgColour);
  
  p.drawPlayer();
  p.movePlayer();
}

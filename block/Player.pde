class Player {
  float xPos, yPos;
  int xSize, ySize;

  Player(float xPos, float yPos, int xSize, int ySize) {
    this.xPos = xPos;
    this.yPos = yPos;
    this.xSize = xSize;
    this.ySize = ySize;
  }
  void drawPlayer() {
    rectMode(CENTER);
    fill(100, 0, 100);
    rect(xPos, yPos, xSize, ySize);
  }
  void movePlayer() {
    float movSpeed = 1;

    if (keyPressed) {
      if (key == 'd') {
        xPos += movSpeed;
      } else if (key == 'a') {
        xPos-=movSpeed;
      } else if (key=='s') {
        yPos+=movSpeed;
      } else if (key=='w') {
        yPos-=movSpeed;
      }
    }
    
  }
}

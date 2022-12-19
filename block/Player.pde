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
    println("drawPlayer(): drawing player...");
    rectMode(CENTER);
    fill(100, 0, 100);
    rect(xPos, yPos, xSize, ySize);
  }
  void movePlayer() {
    float movSpeed = 1;
    boolean inBounds = checkBounds();
    //println("movePlayer(): inBounds after checkBounds() == " + inBounds);

    while(inBounds==false){ //should be true for readability (in bounds yes, move in bounds no, dont move) will swap later
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
  boolean checkBounds() {
    int lB = int(xPos)-xSize/2;  //to make if statement shorter
    int rB = int(xPos)+xSize/2;
    int uB = int(yPos)-ySize/2;
    int dB = int(yPos)+ySize/2;
    //println("checkBounds():\nlB = " + lB + "\nrB = " + rB + "\nuB = " + uB + "\ndB = " + dB);
    boolean inBounds;
    if ((lB>=0 & rB<=width) & (uB>=0  &  dB<=height)) {  //your x-size > 0, x+size<width, y+size<height, y-size>0
      //println("checkBounds(): if statement check 1");
      inBounds = false;
    }else{
      //println("checkBounds(): if statement check 2");
      inBounds = true;
    }
    
    //println("checkBounds(): Finished the if statement, returing inBounds: " + inBounds);
    return inBounds;
  }
}

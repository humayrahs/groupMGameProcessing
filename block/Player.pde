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
    checkBoundsOf(0,0,width,height);  //check bounds of window
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
  void checkBoundsOf(int x, int y, int w, int h) {
    //PLAYER BOUNDARIES
    int lB = int(xPos)-xSize/2;
    int rB = int(xPos)+xSize/2;
    int uB = int(yPos)-ySize/2;
    int dB = int(yPos)+ySize/2;
   
    if(lB<x){
     xPos+=movSpeed; 
    }
    if(rB>width){
     xPos-=movSpeed; 
    }
    if(uB<0){
     yPos+=movSpeed; 
    }
    if(dB>height){
     yPos-=movSpeed; 
    }
  }
}

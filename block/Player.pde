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
    
    
    //keeps things within an object
    if(lB<x){
     xPos+=movSpeed; 
    }
    if(rB>x+w){
     xPos-=movSpeed; 
    }
    if(uB<y){
     yPos+=movSpeed; 
    }
    if(dB>y+h){
     yPos-=movSpeed; 
    }
    
   //keeps thing outsied an object 
  }
}

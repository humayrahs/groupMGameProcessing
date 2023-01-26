class Obstacle{
  float xPos, yPos;
  int xSize, ySize;
  
  Obstacle(float xPos, float yPos, int xSize, int ySize){
    this.xPos = xPos;
    this.yPos = yPos;
    this.xSize = xSize;
    this.ySize = ySize;
  }
  
  void drawObstacle(){
    rectMode(CENTER);
    fill(0,100,0);
    rect(xPos, yPos, xSize, ySize);
  }
}

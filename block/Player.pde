class Player{
 float xPos,yPos;
 int xSize,ySize;
 
 Player(float xPos, float yPos, int xSize, int ySize){
  this.xPos = xPos;
  this.yPos = yPos;
  this.xSize = xSize;
  this.ySize = ySize;
 }
 void drawPlayer(){
   rectMode(CENTER);
   fill(100,0,100);
   rect(xPos,yPos,xSize,ySize);
 }
}

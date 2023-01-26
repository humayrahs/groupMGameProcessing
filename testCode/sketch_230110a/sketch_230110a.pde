int x = 1, y = 1, w = 50, h = 50;
int x2 = 120, y2 = 120, w2 = 40, h2 = 100;
int movSp = 3;
boolean canMove = true;

void setup() {
  size(300, 300);
  frameRate(60);
}

void draw() {
  background(250, 250, 100);
  //draw player
  fill(0, 200, 200);
  rect(x, y, w, h);

  //draw obstacle
  fill(200, 0, 0);
  rect(x2, y2, w2, h2);

  //moveplayer
  if (x>=0 && x+w<=width && y>=0 && y+h<=height) { //this is where the game takes place as you must be in the window to play
    if (keyPressed) {
      if (key=='d') {
        x+=movSp;
      } else if (key=='a') {
        x-=movSp;
      } else if (key=='s') {
        y+=movSp;
      } else if (key=='w') {
        y-=movSp;
      }
    } else { //means player is not in the window
      if (x<0) {
        x = 0;
      } else if (y+h>height) {
        y = height-h;
      } else if (x+w>width) {
        x = width-w;
      } else if (y<0) {
        y = 0;
      }
    }
  }

  //check player touching obstacle
  if (x>x2 && x<x2+w2) {
    if (y>y2 && y<y2+h2) {
      println("Inside rectangle");
    }
  }
}

int x = 1, y = 1, w = 50, h = 50;

int movSp = 3;
void setup() {
  size(300, 300);
  frameRate(60);
}

void draw() {
  background(100, 100, 0);
  fill(0, 100, 100);
  rect(x, y, w, h);
  
  if (x>=0 && x+w<=width && y>=0 && y+h<=height) {
    if (keyPressed) {
      if (key=='d') {
        x+=movSp;
      }
      if (key=='a') {
        x-=movSp;
      }
      if (key=='s') {
        y+=movSp;
      }
      if (key=='w') {
        y-=movSp;
      }
    }
  }else{
   if(x<0){
    x = 0; 
   }
   if(y+h>height){
    y = height-h; 
   }
   if(x+w>width){
    x = width-w; 
   }
   if(y<0){
    y = 0; 
   }
  }
}

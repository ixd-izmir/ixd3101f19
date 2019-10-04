/* 
  ixd3101f19 - Random Number Scene
  in-class example for P1
  sep20Fri
  @Daniele Savasta
  
  This piece of code generate a random number below 10 every time you release the mouse button and visualize it with different colors
*/

int scene=0;

void setup() {
  size(500, 500);
  textSize(50);
}

void draw() {
  
  switch(scene){
    case 1:fill(128,128,0); break;
    case 2:fill(128,0,128); break;
    case 3:fill(128,0,0); break;
    case 4:fill(128,128,128); break;
    case 5:fill(0,128,0); break;
    case 6:fill(0,128,128); break;
    case 7:fill(255,128,0); break;

    default: fill(255);
  } 

  text("g"+scene, 0, height/2);
}

void mouseReleased() {
  background(0);
  scene=int(random(11));
}

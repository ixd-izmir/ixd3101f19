/* 
  ixd3101f19 - This piece of code generate a random number below 10 constantly and shows the changing value until 
  you press the "button" to freeze it 
  in-class example
  sep24Fri
  @Daniele Savasta 
*/

int scene=0;

void setup() {
  size(500, 500);
  textSize(50);
}

void draw() {
  background(0);
  if((!mousePressed)||(dist(50,50,mouseX,mouseY)>25))
  scene=int(random(11));
  
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
  fill(255);
  ellipse(50,50,50,50);
}

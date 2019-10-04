/* 
  ixd3101f19 - Manual Slideshow
  in-class example
  sep24Fri
  @Daniele Savasta 
*/

PImage[] slide;
int index;

float xE0, yE0, xE1, yE1, xE2, yE2;
int buttonSize;

void setup(){
  size (1200,700);
  imageMode(CENTER);
  slide=new PImage[3];
  slide[0]=loadImage("baking-bread-knife-brown-162786.jpg");
  slide[1]=loadImage("art-bowl-bright-325526.jpg");
  slide[2]=loadImage("baking-flour-food-1184265.jpg");
  xE0=100;
  yE0=height/2;
  xE1=600;
  yE1=height/2;
  xE2=1100;
  yE2=height/2;
  index=0;
  buttonSize=70;
}

void draw(){
  background(255);
  image(slide[index], width/2, height/2);
  noStroke();
  fill(#212020);
  ellipse(xE2,yE2,buttonSize,buttonSize);
  ellipse(xE0,yE0,buttonSize,buttonSize);
}

void mouseReleased(){
    if(dist(mouseX,mouseY,xE0,yE0)<=buttonSize/2) {
      index--;
    } 
    if(dist(mouseX,mouseY,xE2,yE2)<=buttonSize/2) {
      index++;
    } 
    if (index>2) index=0;
    if (index<0) index=2;
}

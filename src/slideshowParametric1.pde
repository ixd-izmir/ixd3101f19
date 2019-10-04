/* 
  ixd3101f19 - Slideshow Parametric Version 1
  in-class example for P1
  oct4Fri
  @Daniele Savasta
*/

PImage[] slide;

int index=0;
int time=0;
int interval=50;

void setup(){
  fullScreen();
  imageMode(CENTER);
  slide=new PImage[4];
  slide[0]=loadImage("img_chicago.jpg");
  slide[1]=loadImage("img_la.jpg");
  slide[2]=loadImage("img_ny.jpg");
  slide[3]=loadImage("workbench.jpg");
}

void draw(){
  background(255);
  
  image(slide[index],width/2,height/2);
  time=time+1;  
  if(time>=50) {index++; time=0;}
  if(index>slide.length-1) index=0;
  
  fill(0);
  textSize(50);
  text(frameCount,100,100);
  
  ellipse(mouseX,mouseY,50,50);
}

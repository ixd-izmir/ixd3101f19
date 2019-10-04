// Slideshow "Almost" Parametric
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
  
  time=time+1;
  
  if(time>=0) index=0;
  if(time>=50) index=1;
  if(time>=100) index=2;
  if(time>=150) index=3;
  if(time>200) time=0;
  
  image(slide[time/interval],width/2,height/2);

  fill(0);
  textSize(50);
  text(frameCount,100,100);
  
  ellipse(mouseX,mouseY,50,50);
}

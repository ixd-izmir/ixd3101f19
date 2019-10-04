
PImage slide1;
PImage slide2;
PImage slide3;

int time=0;

void setup(){
  fullScreen();
  imageMode(CENTER);
  slide1=loadImage("img_chicago.jpg");
  slide2=loadImage("img_la.jpg");
  slide3=loadImage("img_ny.jpg");
}

void draw(){
  time++;
  image(slide1,0,0);
  if(time>=50&&time<=100) image(slide2,0,0);
  if(time>=100&&time<=150) image(slide3,0,0);
  if(time>150) time=0;
}

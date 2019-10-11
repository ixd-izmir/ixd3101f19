/**
 * Mask example
 
 **/
PImage sourceImage;
PGraphics resultImage;
PGraphics maskImage;
int sizeE=200;

void setup() {
  size(1200, 1200); //size of canvas
  sourceImage=loadImage("BlueSkyCleanEarth_Gorsel.jpg");
}

void draw() {
  background(255);
  masking();
  found();
  image(resultImage, 0, 0);
  text(mouseX+","+mouseY,mouseX,mouseY);
}

void masking(){
  resultImage = createGraphics(sourceImage.width,sourceImage.height);
  maskImage = createGraphics(sourceImage.width,sourceImage.height); //size of mask
  maskImage.beginDraw();
  maskImage.ellipse(mouseX, mouseY, sizeE,sizeE);
  maskImage.endDraw();
 
  // apply mask
  resultImage.beginDraw();
  resultImage.image(sourceImage,0,0);
  resultImage.endDraw();
  resultImage.mask(maskImage);
}

void found(){
  if(dist(1000,350,mouseX,mouseY)<50) sizeE+=20;
}

int scene=0;
String[] db;
int sceneNum;

void setup() {
  String[] lines = loadStrings("p1-list.csv");
  sceneNum=lines.length;
  println("there are " + sceneNum + " lines");
  db=new String [sceneNum];
  for (int i = 0; i < sceneNum; i++) {
    println(lines[i]);
    db[i] = split(lines[i], ",")[1];
  }

  size(1000, 500);
  textSize(30);
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

   text(db[scene], 0, height/2);
  }

void mouseReleased() {
  background(0);
  scene=int(random(sceneNum));
}

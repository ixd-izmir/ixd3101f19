/* 
  ixd3101f19 - Database reading 1D
  in-class example for P1
  sep20Fri
  @Ceren Kayalar, Daniele Savasta
  
  This sketch generate a random number below 10 every time you release the mouse button and visualize the content of a file string acording to its line number
*/

/*
# p1-list.csv
id,names
1,Sinem Bağcılar - Çisil Özen - Cansu Tekin - Berk Bilgen
2,Eylem Eylül  Acarsoy - Zeynep Güneş Acar
3,Arca Altunsu - Burhan Onur Bilicen - Görkem Öntürkler
4,Dilara Merve Kaçmaz - Merve Topay
5,Beste Kılınç - Eda Beltekin
6,Berke Bulur - Melis Başaranel
7,Sena Esatoğlu - Bilge Yaprak Boru  - Belis Savaş - Nil Köseoğlu
8,Mine Alkan - Merve Kızıltaş - Elif İrem On
9,Elçin Gizem Kanmaz - Nazlı Zeynep Kaptı - Senem Kubilay
10,Ali Fesçi - Berk Berkem - Emre Örnekoğlu
*/

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

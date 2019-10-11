
/* p1-list.csv

id,names,title,duration,image
1,Sinem Bağcılar - Çisil Özen - Cansu Tekin - Berk Bilgen, ciao, 2.25,0title.JPG
2,Eylem Eylül  Acarsoy - Zeynep Güneş Acar, merhaba, 2.25,7Centimeters.jpg
3,Arca Altunsu - Burhan Onur Bilicen - Görkem Öntürkler, whatever, 2.25,300gm.jpg
4,Dilara Merve Kaçmaz - Merve Topay, some, 2.25,abduction.jpg
5,Beste Kılınç - Eda Beltekin, something, 2.25,AShortFilmAboutSadness_Gorsel.jpg
6,Berke Bulur - Melis Başaranel, three, 2.25,At_the_nook.jpg
7,Sena Esatoğlu - Bilge Yaprak Boru  - Belis Savaş - Nil Köseoğlu, nove, 2.25,BlueSkyCleanEarth_Gorsel.jpg
8,Mine Alkan - Merve Kızıltaş - Elif İrem On, fantastic, 2.25,boliviaStrangeSymphony.jpg
9,Elçin Gizem Kanmaz - Nazlı Zeynep Kaptı - Senem Kubilay, one more, 2.25,Corn_Gorsel.JPG
10,Ali Fesçi - Berk Berkem - Emre Örnekoğlu, to go, 2.25,FindFixFinish_Gorsel.jpg

*/

int scene=0;
int filmNum;
String[][] db;
int selectedFilm=1;

int fontSize=30;
float leading;
PImage[] images;
PImage filmImage;

void setup() {
  String[] lines = loadStrings("p1-list.csv");
  filmNum=lines.length;
  println("there are " + lines.length + " lines");
  db=new String[filmNum][split(lines[0], ",").length];
  for (int i = 0; i < filmNum; i++) {
    println(lines[i]);
    db[i] = split(lines[i], ",");
  }

  fullScreen();
}

void draw() {
  background(0);
  textSize(fontSize);
  leading=fontSize*1.4;

  switch(scene) {
    case 0: filmList(); break;
    case 1: filmCard(); break;
  }

}

void mouseReleased() {
  background(0);
  if(selectedFilm==filmNum-1) selectedFilm=0;
  selectedFilm++;
}

void keyPressed(){
  if(key=='1') scene=1;
  if(key=='0') scene=0;
  if(key=='p') fontSize+=10;
  if(key=='l') fontSize-=10;
}

void filmCard(){
  text("director "+db[selectedFilm][1],100,100);
  text("title"+db[selectedFilm][2],100,150);
  text("duration"+db[selectedFilm][3],100,200);
  filmImage=loadImage("img/"+db[selectedFilm][4]);
  float imageRatio=float(filmImage.width)/float(filmImage.height);
  text(imageRatio,mouseX,mouseY);
  image(filmImage,100,250,width/2, (width/2)/imageRatio );
}

void filmList(){
  for (int i = 0; i < filmNum; i++) {
    text("title"+db[i][2],100,100+i*leading);
  }
}

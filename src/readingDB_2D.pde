/* 
  ixd3101f19 - Database reading
  in-class example for P1
  sep20Fri
  @Ceren Kayalar, Daniele Savasta
  
  This sketch generate a random number below 10 every time you release the mouse button and visualize the content of a file string acording to its line number
*/

/*
# p1-list.csv
id,names,title
1,Sinem Bağcılar - Çisil Özen - Cansu Tekin - Berk Bilgen, ciao
2,Eylem Eylül  Acarsoy - Zeynep Güneş Acar, merhaba
3,Arca Altunsu - Burhan Onur Bilicen - Görkem Öntürkler, whatever
4,Dilara Merve Kaçmaz - Merve Topay, some
5,Beste Kılınç - Eda Beltekin, something
6,Berke Bulur - Melis Başaranel, three
7,Sena Esatoğlu - Bilge Yaprak Boru  - Belis Savaş - Nil Köseoğlu, nove
8,Mine Alkan - Merve Kızıltaş - Elif İrem On, fantastic
9,Elçin Gizem Kanmaz - Nazlı Zeynep Kaptı - Senem Kubilay, one more
10,Ali Fesçi - Berk Berkem - Emre Örnekoğlu, to go
*/

int scene=0;
int sceneNum;
String[][] db;

void setup() {
  String[] lines = loadStrings("p1-list.csv");
  sceneNum=lines.length;
  println("there are " + lines.length + " lines");
  db=new String[sceneNum][split(lines[0], ",").length];
  for (int i = 0; i < sceneNum; i++) {
    println(lines[i]);
    db[i] = split(lines[i], ",");
  }

  size(1000, 500);
  textSize(30);
}

void draw() {
  text("g"+scene+" "+db[scene][1]+db[scene][2], 0, height/2);
}

void mouseReleased() {
  background(0);
  scene=int(random(sceneNum));
}

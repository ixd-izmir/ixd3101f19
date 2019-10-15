
// ixd3101f19
// @cerenkayalar
// code sample for reading the archive db as a table

String selectedYear;

Table table;

void setup () {
  size(1920, 1080);
  
  // csv to RAM (data array) - code on github

  table = loadTable("contactFilmFestivalArchive.csv", "header");

  println(table.getRowCount() + " total rows in table");
  for (TableRow row : table.rows()) {
    println("Year: " + row.getString("edition") + " Status: " + row.getString("section") + " Title: " + row.getString("original title"));
  }

  println("Films of the year 2019: ");
  for (TableRow row : table.findRows("2019", "edition")) {
    println(" Status: " + row.getString("section") + " Title: " + row.getString("original title"));
  }
  
  selectedYear = "2019";
}

void draw() {
    background(255);
    fill(0);
    textSize(96);
    text(selectedYear, 20, 100);
    // select "selectedYear" content from data array 
    int leading = 24;
    int i = 0;
    textSize(18);
    for (TableRow row : table.findRows(selectedYear, "edition")) {
      text(row.getString("original title") + " @" + row.getString("director"), 100, 200+leading*i);
      i++;
    }   
}

void mouseReleased() {
  // 2015..2019 
  selectedYear = str(2010 + int(random(5,10)));
  
}




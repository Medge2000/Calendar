



//// Controller

// What year is it?
String Year = "2020";

// Is is a Leapyear?
boolean LeapYear = true;

// What day does the year start on?
String StartDay = "Wednesday";





Database database = new Database();
Year year = new Year();
int Xposition, Yposition, TextSize, ColumnSpacing, RowSpacing;
int imageCounter;

void setup() {
  size(1920, 1080);
  //fullScreen();
  frameRate(60);
  background(0);
  Xposition = 20; 
  Yposition = 300; 
  TextSize = 20; 
  ColumnSpacing = 40;
  RowSpacing = 40; 
  imageCounter = 0;
  
  background(0);
  year.plot(Xposition, Yposition, ColumnSpacing, RowSpacing, TextSize);  
  
  textSize(TextSize);
  textAlign(LEFT);
  fill(255, 50, 50);
  text("Days In Work", 120, 100 + TextSize);
  fill(50, 255, 255);
  text("Days Off", 120, 100);
  
  textSize(100);
  fill(230);
  textAlign(CENTER);
  text(Year, width/2, 130);
  
  //database.display();
}

void draw() {
  
}

void keyPressed() {
  if (keyCode == ' ') {
    save("Calendar" + imageCounter + ".png");
    imageCounter++;
  }
}

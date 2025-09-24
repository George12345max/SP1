Group groupA;
PFont font;

void setup() {
  size(800, 600);
  font = createFont("Arial", 16);
  textFont(font);

  // Indlæs flag (du skal have flag-billeder i "data"-mappen)
  PImage russiaFlag = loadImage("russia.png");
  PImage saudiFlag = loadImage("saudiarabia.png");
  PImage egyptFlag = loadImage("egypt.png");
  PImage uruguayFlag = loadImage("uruguay.png");

  // Lav Country-objekter
  Country[] countriesA = {
    new Country("RUSSIA", russiaFlag),
    new Country("SAUDI ARABIA", saudiFlag),
    new Country("EGYPT", egyptFlag),
    new Country("URUGUAY", uruguayFlag)
  };

  // Lav Group-objekt
  groupA = new Group("GROUP A", countriesA);
}

void draw() {
  background(200);
  groupA.display(50, 50, 250, 50); 
}

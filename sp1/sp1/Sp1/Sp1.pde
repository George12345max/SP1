PFont font;
Group[] grupper;

void setup() {
  size(900, 600);
  font = createFont("Arial", 16);
  textFont(font);
  background(20);

  // Indlæser flag
  PImage russia = loadImage("russia.png");
  PImage saudi = loadImage("saudiarabia.png");
  PImage egypt = loadImage("egypt.png");
  PImage uruguay = loadImage("uruguay.png");

  PImage portugal = loadImage("portugal.png");
  PImage spain = loadImage("spain.png");
  PImage morocco = loadImage("morocco.png");
  PImage iran = loadImage("iran.png");

  PImage france = loadImage("france.png");
  PImage australia = loadImage("australia.png");
  PImage peru = loadImage("peru.png");
  PImage denmark = loadImage("denmark.png");

  PImage argentina = loadImage("argentina.png");
  PImage iceland = loadImage("iceland.png");
  PImage croatia = loadImage("croatia.png");
  PImage nigeria = loadImage("nigeria.png");

  // Opretter grupper
  grupper = new Group[4];

  grupper[0] = new Group("GROUP A", 50, 100, new Country[]{
    new Country("RUSSIA", russia),
    new Country("SAUDI ARABIA", saudi),
    new Country("EGYPT", egypt),
    new Country("URUGUAY", uruguay)
  });

  grupper[1] = new Group("GROUP B", 50, 300, new Country[]{
    new Country("PORTUGAL", portugal),
    new Country("SPAIN", spain),
    new Country("MOROCCO", morocco),
    new Country("IRAN", iran)
  });

  grupper[2] = new Group("GROUP C", 300, 100, new Country[]{
    new Country("FRANCE", france),
    new Country("AUSTRALIA", australia),
    new Country("PERU", peru),
    new Country("DENMARK", denmark)
  });

  grupper[3] = new Group("GROUP D", 300, 300, new Country[]{
    new Country("ARGENTINA", argentina),
    new Country("ICELAND", iceland),
    new Country("CROATIA", croatia),
    new Country("NIGERIA", nigeria)
  });
}

void draw() {
  background(20);
  for (Group g : grupper) {
    g.display();
  }
}

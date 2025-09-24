class Group {
  String name;
  float x, y;
  Country[] countries;

  Group(String name, float x, float y, Country[] countries) {
    this.name = name;
    this.x = x;
    this.y = y;
    this.countries = countries;
  }

  void display() {
    // Tegn gruppenavn
    fill(0, 0, 255);
    noStroke();
    rect(x, y, 200, 30);
    fill(255);
    textAlign(LEFT, CENTER);
    text(name, x + 10, y + 15);

    // Tegn hvert land
    float boxHeight = 40;
    for (int i = 0; i < countries.length; i++) {
      countries[i].display(x, y + 40 + i * (boxHeight + 5), 200, boxHeight);
    }
  }
}

class Country {
  String name;
  PImage flag;

  Country(String n, PImage f) {
    name = n;
    flag = f;
  }

  void display(float x, float y, float rectW, float rectH) {
    fill(255);
    rect(x, y, rectW, rectH); // hvid baggrund

    if (flag != null) {
      image(flag, x, y, rectH, rectH); // flag til venstre
    }

    fill(0);
    textAlign(LEFT, CENTER);
    text(name, x + rectH + 10, y + rectH/2);
  }
}

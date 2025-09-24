class Country {
  String name;
  PImage flag;

  Country(String name, PImage flag) {
    this.name = name;
    this.flag = flag;
  }

  void display(float x, float y, float w, float h) {
    fill(255);
    stroke(0);
    rect(x, y, w, h);
    image(flag, x + 5, y + 5, 30, 20);
    fill(0);
    text(name, x + 45, y + h/2);
  }
}

class Group {
  String groupName;
  Country[] countries;

  Group(String n, Country[] c) {
    groupName = n;
    countries = c;
  }

  void display(float x, float y, float rectW, float rectH) {
    // tegn blå bjælke til gruppe-navn
    fill(0, 0, 200);
    rect(x, y, rectW, rectH);
    fill(255);
    textAlign(LEFT, CENTER);
    text(groupName, x + 10, y + rectH/2);

    // tegn landene
    for (int i = 0; i < countries.length; i++) {
      countries[i].display(x, y + (i+1) * (rectH + 5), rectW, rectH);
    }
  }
}

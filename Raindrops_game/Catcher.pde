class Catcher {
  PVector loc;
  int d;

  Catcher() {
    loc = new PVector(mouseX, height-d);
    d = 200;
  }

  void display() {
    fill(128, 0, 255);
    ellipse(loc.x, loc.y, d, d/4);
  }
  void update() {
    loc.set(mouseX, height-d);
  }
  boolean catchDrop(Raindrop drop) {
    if (loc.dist(drop.loc) < d/2 + drop.d/2) {
      drop.colorChange();
      return true;
    }
    else {
      return false;
    }
  }
}


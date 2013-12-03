class BadRain {
  PVector loc;
  PVector vel;
  PVector acc;
  float d;


  BadRain() {
    loc = new PVector(random(width), height);
    vel = new PVector(random(-4, 4), random(1, 4));
    acc = new PVector(0, .01);
    d = random(5, 15);
  }
  void ShowRain() {
    fill(255, 0, 0);
    ellipse(loc.x, loc.y, d, d);
  }
  void BadRain() {
    vel.add(acc);
    loc.add(vel);
  }

  void MoreRain() {
    loc.set( random(width), 0);
    vel.set(0, random(1, 3));
  }
}


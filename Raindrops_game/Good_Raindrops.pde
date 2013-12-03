class Raindrop {
  PVector loc;
  PVector vel;
  PVector acc;
  float d;
  color c;

  Raindrop() {
    loc = new PVector(random(width), height);
    vel = new PVector(random(-5, 5), random(1, 5));
    acc = new PVector(0, .01);
    d = random(5, 15);
  }
  void DisplayRain() {
    //    strokeWeight(random(4,7));
    //    stroke(random(255), random(255), random(255));
    fill(0, 255, 0);
    ellipse(loc.x, loc.y, d, d);
  }
  void Rain() {
    vel.add(acc);
    loc.add(vel);
  }
  void KeepRaining() {
    loc.set( random(width), 0);
    vel.set(0, random(1, 3));
  }
  void colorChange() {
    c = color(0, random(100, 255), random(100, 255));
  }
}


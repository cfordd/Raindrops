Raindrop[] r = new Raindrop[70];
BadRain[] b = new BadRain[30];
Catcher c1;
int score;
void setup() {
  size(displayWidth, displayHeight);
  for (int i = 0; i < r.length; i++) {
    r[i] = new Raindrop();
  }
  for ( int i = 0; i < b.length; i++) {
    b[i] = new BadRain();
  }
  c1 = new Catcher();
}

void draw() {
  background(255);
  textSize(120);
  fill(10);
  text(score, 10, 100);
  for (int i = 0; i < r.length; i++) {
    r[i].DisplayRain();
    r[i].Rain();
    if (r[i].loc.y > height + r[i].d) {
      r[i].KeepRaining();
    }
    if (c1.catchDrop(r[i]) == true) {
      r[i].KeepRaining();
      score++;
    }
  }
  for (int i = 0; i < b.length; i++) {
    b[i].ShowRain();
    b[i].BadRain();
    if (b[i].loc.y > height + b[i].d) {
      b[i].MoreRain();
    }
    if (c1.catchDrop(b[i]) == true) {
      b[i].MoreRain();
      score--;
    }
    c1.display();
    c1.update();
  }
}


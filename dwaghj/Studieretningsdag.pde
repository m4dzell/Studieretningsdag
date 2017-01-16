
Booleans b;
Player p;

void setup() {
  background(72,25,210);
  b = new Booleans();
  p = new Player();
  fullScreen();
}



void draw() {
}

void keyPressed() {

  if (key == 'w' || key == 'W') {
    b.W = true;
  }
  if (key == 's' || key == 'S') {
    b.S = true;
  }
  if (key == 'a' || key == 'A') {
    b.A = true;
  }
  if (key == 'd' || key == 'D') {
    b.D = true;
  }
}


void keyReleased() {

  if (key == 'w' || key == 'W') {
    b.W = false;
  }
  if (key == 's' || key == 'S') {
    b.S = false;
  }
  if (key == 'a' || key == 'A') {
    b.A = false;
  }
  if (key == 'd' || key == 'D') {
    b.D = false;
  }
}
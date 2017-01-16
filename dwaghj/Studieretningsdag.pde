
Booleans b = new Booleans();
Player p = new Player();

void setup() {  
  fullScreen();
}



void draw() {
  background(72, 25, 210);
  p.movement();
  b.booleans();
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
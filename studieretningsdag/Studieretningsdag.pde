PImage Up;
PImage Down;
PImage Left;
PImage Right;
String message = "Skemaspil";
float mapW;
float menuW;
float pictureX = 0;
float pictureY = 0;

float m = 0;
float h = 0;

PImage mobile;
PImage background;



Booleans b = new Booleans();
Player p = new Player();
Clock c = new Clock();
//Room r = new Room();
//Wall w = new Wall();


void setup() {  
  size(1300, 700);
  mapW = width/1.5;
  menuW = width-mapW;
  mobile = loadImage("telefon_med_besked.png");
  Up = loadImage("up.png");
  Down = loadImage("down.png");
  Left = loadImage("left.png");
  Right = loadImage("right.png");
  background = loadImage("Baggrund.png");
  Setup();
}



void draw() {
  float prevX = p.x;
  float prevY = p.y;

  //println("PlayerX: " + (mapW/2-pictureX-1334/2) + "      " + (pictureX-1334/2-mapW/2));


  background(255);

  /*pushMatrix();
   translate(mapW/2, height/2);
   scale(1);
   image(background, pictureX-1334/2, pictureY-500);
   popMatrix();*/

  //image(background, 0, 0);

  // Header
  fill(0);
  textAlign(CENTER);
  textSize(20);
  text(message, mapW/2, 30);

  //menu
  //stroke(0);
  //strokeWeight(5);

  //image(mobile, mapW, 0, menuW, height);

  m += 0.1;
  h += 0.1/60;

  noFill();  
  c.clock(800, 300, 9, 25, 200);
  p.movement();
  b.booleans();
  //r.drawRoom();
  //w.drawWall();


  for (Wall temp : walls) {
    temp.drawWall();
    temp.drawDoor();

    if (temp.collisionDetection(p.x, p.y, 5))
    {
      p.x = prevX;
      p.y = prevY;
    }
  }
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
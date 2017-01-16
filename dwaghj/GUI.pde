void setup()
{
  size(1300, 700);
  mapW = width/1.5;
  menuW = width-mapW;
  mobile = loadImage("telefon_med_besked.png");
}
String message = "Find lokalet";
float mapW;
float menuW;

float m = 0;
float h = 0;

PImage mobile;

void draw()
{
  background(255);

  // Header
  fill(0);
  textAlign(CENTER);
  textSize(20);
  text(message, mapW/2, 30);

  //menu
  stroke(0);
  strokeWeight(5);

  image(mobile, mapW, 0, menuW, height);

  m += 0.1;
  h += 0.1/60;
  
  noFill();
  Clock(mapW+menuW/2, height/3, h, m, 200);
}

void Clock(float x, float y, float h, float m, float r)
{
  strokeWeight(2);
  // Draw circle
  stroke(0);
  ellipse(x, y, r, r);

  // Draw hourhand
  pushMatrix();
  translate(x, y);
  rotate(map(h, 0, 12, 0, 2*PI)-PI/2);
  line(0, 0, r/4, 0);
  popMatrix();

  // Draw minutehand
  pushMatrix();
  translate(x, y);
  rotate(map(m, 0, 60, 0, 2*PI)-PI/2);
  line(0, 0, r/2.5, 0);
  popMatrix();

  strokeWeight(1);
}
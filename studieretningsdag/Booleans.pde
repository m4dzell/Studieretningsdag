class Booleans {
  boolean W;
  boolean S;
  boolean A;
  boolean D;

  int Yspeed = 5;
  int Xspeed = 5;

  
  void booleans() {
    if (W == true) {
      p.y -= Yspeed;
      image(Up,p.x,p.y-10);
      //pictureY += Yspeed;
    }
    if (S == true) {
      p.y += Yspeed;
      image(Down,p.x,p.y-10);
      //pictureY -= Yspeed;
    }
    if (A == true) {
      p.x -= Xspeed;
      image(Left,p.x,p.y-10);
      //pictureX += Xspeed;
    }
    if (D == true) {
      p.x += Xspeed;
      image(Right,p.x,p.y-10);
      //pictureX -= Xspeed;
    }
    if(!W && !S && !A && !D)
    {
      image(Down,p.x,p.y-10);
    }
  }
}
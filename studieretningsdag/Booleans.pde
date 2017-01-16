class Booleans {
  boolean W;
  boolean S;
  boolean A;
  boolean D;

  int Yspeed = 5;
  int Xspeed = 5;

  
  void booleans() {
    if (W == true) {
      image(Up,p.x,p.y);
      pictureY += Yspeed;
    }
    if (S == true) {
      image(Down,p.x,p.y);
      pictureY -= Yspeed;
    }
    if (A == true) {
      image(Left,p.x,p.y);
      pictureX += Xspeed;
    }
    if (D == true) {
      image(Right,p.x,p.y);
      pictureX -= Xspeed;
    }
    if(!W && !S && !A && !D)
    {
      image(Down,p.x,p.y);
    }
  }
}
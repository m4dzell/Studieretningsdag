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
      image(Up,p.x,p.y);
    }
    if (S == true) {
      p.y += Yspeed;
      image(Down,p.x,p.y);
    }
    if (A == true) {
      p.x -= Xspeed;
      image(Left,p.x,p.y);
    }
    if (D == true) {
      p.x += Xspeed;
      image(Right,p.x,p.y);
    }
  }
}
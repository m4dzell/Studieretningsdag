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
    }
    if (S == true) {
      p.y += Yspeed;
    }
    if (A == true) {
      p.x -= Xspeed;
    }
    if (D == true) {
      p.x += Xspeed;
    }
  }
}
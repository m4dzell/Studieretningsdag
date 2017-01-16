// Alle væggenes koordinater skal hardcodes og eventuelt i en arrayliste.
class Wall {
  private int x;
  private int y;
  private int w;
  private int h;
  
  Wall(int posX, int posY, int wallWidth, int wallHeight) {
    x = posX;
    y = posY;
    w = wallWidth;
    h = wallHeight;
  }

  //retunere true når spillere kollidere med en væg
  boolean collisionDetection(float playerPosX, float playerPosY, int playerRadius) {
    if (playerPosX + playerRadius > x && playerPosX - playerRadius < x + w && playerPosY + playerRadius > y && playerPosY - playerRadius < y +h) {
      return true;
    } else {
      return false;
    }
  }
  
  // Til debugging
  void drawWall() {
    fill(0);
    rect(x,y,w,h);
  }
}
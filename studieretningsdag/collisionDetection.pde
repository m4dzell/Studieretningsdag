ArrayList<Wall> walls;

void Setup() {
  size(1300, 700);
  walls = new ArrayList<Wall>();

  walls.add(new Wall(30, 36, 5, 111));
  walls.add(new Wall(30, 36, 1032, 5));
  walls.add(new Wall(30, 96, 224, 5, 0));
  walls.add(new Wall(30, 142, 273, 5));
  walls.add(new Wall(253, 36, 5, 90));
  walls.add(new Wall(253, 121, 117, 5, 0));
  walls.add(new Wall(368, 36, 5, 90));
  walls.add(new Wall(368, 121, 120, 5, 0));
  walls.add(new Wall(482, 36, 5, 90));
  walls.add(new Wall(272, 142, 5, 151));
  walls.add(new Wall(272, 282, 288, 5));
  walls.add(new Wall(272, 208, 115, 5, 0));
  walls.add(new Wall(384, 208, 115, 5, 0));
  walls.add(new Wall(383, 208, 5, 81));
  walls.add(new Wall(490, 208, 5, 81));
  walls.add(new Wall(325, 142, 187, 5));
  walls.add(new Wall(530, 142, 528, 5));
  walls.add(new Wall(483, 98, 75, 5, 0));
  walls.add(new Wall(557, 36, 5, 67));  
  walls.add(new Wall(594, 36, 5, 90));
  walls.add(new Wall(594, 121, 117, 5, 0));
  walls.add(new Wall(703, 36, 5, 90));
  walls.add(new Wall(547, 142, 5, 150));
  walls.add(new Wall(779, 36, 5, 90));
  walls.add(new Wall(887, 36, 5, 90));
  walls.add(new Wall(999, 36, 5, 90));
  walls.add(new Wall(779, 119, 112, 5, 0));
  walls.add(new Wall(889, 119, 112, 5, 0));
  walls.add(new Wall(1053, 24, 5, 615));
  walls.add(new Wall(1207, 24, 5, 615));
  walls.add(new Wall(1053, 24, 160, 5));
  walls.add(new Wall(1053, 630, 160, 5));
  walls.add(new Wall(1117, 24, 5, 97));
  walls.add(new Wall(1117, 115, 95, 5, 0));
  walls.add(new Wall(1119, 248, 5, 80, 1));
  walls.add(new Wall(1119, 322, 5, 80, 1));
  walls.add(new Wall(1119, 401, 5, 54, 1));
  walls.add(new Wall(1119, 248, 98, 5));
  walls.add(new Wall(1119, 322, 98, 5));
  walls.add(new Wall(1119, 402, 98, 5));
  walls.add(new Wall(1119, 535, 98, 5));
  walls.add(new Wall(1095, 456, 116, 5));
  walls.add(new Wall(1095, 533, 116, 5));
  walls.add(new Wall(1095, 456, 5, 80, 1));
  walls.add(new Wall(1112, 538, 5, 50, 1));
  walls.add(new Wall(1112, 588, 96, 5));
}

// Alle væggenes koordinater skal hardcodes og eventuelt i en arrayliste.
class Wall {
  private int x;
  private int y;
  private int w;
  private int h;

  private float doorX;
  private float doorY;
  private boolean doorActive = false;

  Wall(int posX, int posY, int wallWidth, int wallHeight) {
    x = posX;
    y = posY;
    w = wallWidth;
    h = wallHeight;
  }

  Wall(int posX, int posY, int wallWidth, int wallHeight, int doorPos) {
    x = posX;
    y = posY;
    w = wallWidth;
    h = wallHeight;

    setDoor(doorPos);
  }

  //retunere true når spillere kollidere med en væg
  boolean collisionDetection(float playerPosX, float playerPosY, int playerRadius) {
    if (playerPosX + playerRadius > x && playerPosX - playerRadius < x + w && playerPosY + playerRadius > y && playerPosY - playerRadius < y +h) {
      if (doorActive && playerPosX + playerRadius > doorX && playerPosX - playerRadius < doorX + 10 && playerPosY + playerRadius > doorY && playerPosY - playerRadius < doorY +10) {
        return false;
      }
      return true;
    } else {
      return false;
    }
  }

  // Til debugging
  void drawWall() {
    fill(0);
    rect(x, y, w, h);
  }
  
  // Til debugging
  void drawDoor() {
    fill(255, 0, 0);
    rect(doorX, doorY, 10, 10);
  }

  void setDoor(int a) {
    doorActive = true;
    if (a == 0) {
      doorX = x+w/2;
      doorY = y-2.5;
    } else if (a == 1) {
      doorX = x-2.5;
      doorY = y+h/2;
    }
  }
}
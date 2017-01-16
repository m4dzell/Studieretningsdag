// Alle rums koordinater skal hardcodes og eventuelt i en arrayliste.
class Room {
  private int x;
  private int y;
  private int w;
  private int h;
  private String name;

  Room(int posX, int posY, int roomWidth, int roomHeight, String roomName) {
    x = posX;
    y = posY;
    w = roomWidth;
    h = roomHeight;
    name = roomName;
  }

  // Retunere om spilleren er i det pågældene rum
  boolean roomDetection(int playerPosX, int playerPosY, int playerRadius) {
    if (playerPosX + playerRadius > x && playerPosX - playerRadius < x + w && playerPosY + playerRadius > y && playerPosY - playerRadius < y +h) {
      return true;
    } else {
      return false;
    }
  }
  
  // Til at checke om navnet i sms'en er det samme som rummets navn.
  // Sammenling eventuelt arraynummer i stedet for.
  boolean compareName(String smsName) {
    if (name == smsName) {
      return true;
    } else {
      return false;
    }
  }
  
  // Til debugging
  void drawRoom() {
    fill(255,0,0);
    rect(x,y,w,h);
  }
}
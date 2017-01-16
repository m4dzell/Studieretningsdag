ArrayList<Room> rooms;

void Setup2() {
  size(1300, 700);
  rooms = new ArrayList<Room>();

  rooms.add(new Room(38, 40, 211, 52, "320", 0 ));
  rooms.add(new Room(262, 40, 103, 77, "318", 1 ));
  rooms.add(new Room(377, 40, 103, 77, "317", 2 ));
  rooms.add(new Room(489, 40, 65, 54, "316", 3 ));
  rooms.add(new Room(604, 40, 103, 77, "314", 4 ));
  rooms.add(new Room(787, 40, 103, 77, "306", 5 ));
  rooms.add(new Room(896, 40, 103, 77, "307", 6 ));
  rooms.add(new Room(280, 214, 98, 70, "367", 7 ));
  rooms.add(new Room(392, 214, 98, 70, "366", 8 ));
  rooms.add(new Room(1122, 33, 85, 80, "304", 9 ));
  rooms.add(new Room(1122, 255, 85, 75, "349", 10 ));
  rooms.add(new Room(1122, 332, 85, 75, "350", 11 ));
  rooms.add(new Room(1122, 410, 85, 45, "352", 12 ));
  rooms.add(new Room(1100, 460, 109, 73, "354", 13 ));
  rooms.add(new Room(1122, 540, 85, 45, "355", 14 ));
}

// Alle rums koordinater skal hardcodes og eventuelt i en arrayliste.
class Room {
  private int x;
  private int y;
  private int w;
  private int h;
  private String name;
  private int num;

  Room(int posX, int posY, int roomWidth, int roomHeight, String roomName, int roomNumber) {
    x = posX;
    y = posY;
    w = roomWidth;
    h = roomHeight;
    name = roomName;
    num = roomNumber;
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
  // Sammenlign eventuelt arraynummer i stedet for.
  boolean compareName(String smsName) {
    if (name == smsName) {
      return true;
    } else {
      return false;
    }
  }

  int getRoomNumber() {
    return num;
  }

  // Til debugging
  void drawRoom() {
    fill(0, 0, 255);
    rect(x, y, w, h);
  }
}
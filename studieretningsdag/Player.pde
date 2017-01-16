class Player {
  float x = 200;
  float y = 110;
  
  void movement(){
    pushStyle();
    noStroke();
    fill(0,0,0,0);
  rect(x, y, 14, 20);
  popStyle();
 
  }
}
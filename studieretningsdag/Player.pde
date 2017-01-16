class Player {
  float x = 490;
  float y = 490;
  
  void movement(){
    pushStyle();
    noStroke();
    fill(0,0,0,0);
  rect(x, y, 14, 20);
  popStyle();
 
  }
}
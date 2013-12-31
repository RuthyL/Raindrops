class Catcher {
  float r; 
  float x, y;
  PVector loc; 
  PImage hands;

  Catcher (float tempR) { //constructor
  hands = loadImage("hands.gif");
    r = tempR;
    x = 0;
    y = 0;
  }
  void setLocation (float tempX, float tempY) { //set the location
    x = tempX;
    y = tempY;
  }

  void display() {
    noStroke(); 
//    image(hands,x-30,y+30,175,125); 
image(hands, x-40, y-30);
hands.resize(85,70);
  }

  boolean intersect(Drops d) {
    float distance = dist(x, y, d.x, d.y);
    if (distance < r + d.r) {
      return true;
    } 
    else {
      return false;
    }
  }
}

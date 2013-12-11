class Catcher {
  float r; 
  float x, y;
  PVector loc; 
  PImage child;

  Catcher (float tempR) { //constructor
  child = loadImage("catchingchild.gif");
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
    image(child,x-30,y+30,175,125); //cursor is girl with tongue out
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

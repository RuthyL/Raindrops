class Catcher {
  float r; 
  float x, y;
  PVector loc; 
  PImage umbrella;

  Catcher (float tempR) { //constructor
  umbrella = loadImage("umbrella.png");
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
image(umbrella, x-35, y-5);
umbrella.resize(70,80);
  }

  // A function that returns true or false based on if the catcher intersects a raindrop
boolean intersect(Drops d) {
      // Calculate distance
    float distance = dist(x, y, d.x, d.y);
    if (distance < r + d.r) {
      return true;
    } 
    else {
      return false;
    }
  }
}

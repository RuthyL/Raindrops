//displays the startscreen
class Startscreen {
  boolean disp;

  Startscreen() {
    disp = true;
  }

  void display() {
    if (disp) {
      background(0);
      textSize(30);
      textAlign(CENTER);
      text("Click anywhere to start", width/2, height/2);
    }
  }
}


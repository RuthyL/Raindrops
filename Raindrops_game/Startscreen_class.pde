//displays the startscreen
class Startscreen {
  boolean disp;

  Startscreen() {
    disp = true;
  }

  void display() {
    if (disp) {
      background(0);
      textSize(40);
      textAlign(CENTER);
      text("CLICK ANYWHERE \n TO START", width/2, height/3);
      textSize(15);
      textAlign(CENTER);
//      text("INSTRUCTIONS \n", width/2, height/2);
    }
  }
}

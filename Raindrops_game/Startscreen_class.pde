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
      text("INSTRUCTIONS", width/2, height/2);
    }
  }
}

//There will be tears falling from Kim Kardashian at the top of the screen. Your catcher, controlled by the mouse, will be a hundred dollar bill. To level up, you have to catch 20 drops 
//\n while still having lives left. Each time you level up, 
//\nthe speed of the raindrops increases, and the game gets harder.
//When you lose all of your lives, it is game over.


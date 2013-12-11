class Drops {
  float r; //radius of raindrop
  float x, y; // variables for location of raindrop
  float speed; // speed of raindrop


  //Constructor
  Drops (float tempR) {
    r = tempR;
    x = random(width);
    y = 0;
    speed = random(2, 3);
  }

  void fall() {
    y += speed*level; //speed increases with increasing level
  }

  //draw drop
  void display() {
    ;
    noStroke();
    fill(153, 204, 255);
    ellipseMode(CENTER);
    for (int i = 1; i < r; i++) {
      ellipse(x, y+i*2, i*2, i*2); //creating the drops
    }
  }

  void caught() { //if the drop is caught
    speed = 0; //stop it from moving by setting speed to zero
    x = -1000;
    pos_score++;
    println(pos_score);
  }
  void offScreen() { //check if it hits the bottom
    if (y > height+4) {
      neg_score--; //score goes down if you don't catch it
      x = -1000;
      speed = 0;
      y = 50;
    }
  }

  void score() { //your lives
    int x = 30;
    if (neg_score > 0) {
      for (int i = 0; i < neg_score; i++) {
        fill(0, 76, 153);
        stroke(1);
        rect(x+20, 600, 20, 20);
        x = x + 30;
      }
    }
    else {
      println("GAME OVER"); //if you run out of lives it is game over 
      exit(); //the program exits when you lose
    }
  }
}

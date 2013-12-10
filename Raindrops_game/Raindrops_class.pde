class Drops {
  float r;
  float x, y;
  float speed;

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
fill(153,204,255);
    ellipseMode(CENTER);
    for (int i = 1; i < r; i++) {
      ellipse(x, y+i*2, i*2, i*2); //creating the drops
    }
  }

  void caught() { //if you catch it your score goes up
    speed = 0;
    x = -1000;
    pos_score++;
    println(pos_score);
  }
  void offScreen() { //if you miss then your score goes down
    if (y > height+4) {
      neg_score--;
      x = -1000;
      speed = 0;
      y = 50;
    }
  }

void score() { //your lives
    int x = 30;
    if (neg_score > 0) {
      for (int i = 0; i < neg_score; i++) {
fill(0,76,153);
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



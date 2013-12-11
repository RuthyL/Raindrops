//declaring variables
PImage sky; 
PImage clouds;
PImage catchingchild;
PVector loc;
Catcher catcher;
Drops[] drop;
Timer timer;
int level = 1;
int pos_score = 0;
int neg_score = 10;
int totalDrops = 0;

void setup() {
  size (400, 650);
  clouds = loadImage("clouds.gif");
  sky = loadImage("sky.jpeg"); 
  PVector loc = new PVector(75, 50); 
  catchingchild = loadImage("catchingchild.gif");
  catcher = new Catcher(15);
  drop = new Drops[1000];
  timer = new Timer(random(300, 1000));

  timer.start();

  smooth();
}

void draw() {
  background (sky);
  sky.resize(400, 650);
  image(clouds, width/2, height/20);
  imageMode(CENTER);
  catcher.setLocation(mouseX, mouseY); //catcher follows your mouse
  catcher.display();

  if (timer.isFinished()) { //check the timer
    drop[totalDrops] = new Drops(random(5, 10)); 
    totalDrops++; //increment totalDrops
    if (totalDrops>= drop.length) { //if we hit the end of the array
      totalDrops = 0; //start over
    }
    timer.start();
  }

  for (int i = 0; i < totalDrops; i++) { 
    drop[i].fall();
    drop[i].display();
    drop[i].score();

    if (catcher.intersect(drop[i])) { //if the catcher intersects a drop the drop is caught
      drop[i].caught();
    }

    drop[i].offScreen();
  }
  if (pos_score == 20) { //if you hit a score of 20 then you go up a level
    level++;
    pos_score = 0;
    println("level "+level);
    neg_score = 10;
  }
}



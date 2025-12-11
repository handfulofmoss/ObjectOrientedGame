PImage otterUp; //<>//
PImage otterDown;
PImage otterLeft;
PImage otterRight;
PImage urchin; //<>//

boolean moveUp;
boolean moveDown;
boolean moveLeft;
boolean moveRight;
boolean aboveWater;

PVector position;
PVector speed;
PVector acceleration;

Otter player = new Otter();
AirTimer timer = new AirTimer();

//Urchin urch1 = new Urchin(20,20);

void setup() {
  size(400, 400);
  background(190, 231, 232);
  noStroke();
  fill(232, 249, 250);
  rect(0, 0, 400, 80);
  aboveWater=true;
  otterUp = loadImage("otterUp.png");
  urchin = loadImage("urchin.png");
}

void draw() {
  background(190, 231, 232);
  fill(232, 249, 250);
  rect(0, 0, 400, 80);
  //display needed assets
  player.drawOtter();
  player.movement();
  //urchin1.display();
  timer.display();
  timer.count();
}

//checks when WASD are pressed, ajusting the currernt movement of the player depending
void keyPressed() {
  if (key == 'w' || key == 'W') {
    moveUp = true;
  }
  if (key == 's' || key == 'S') {
    moveDown = true;
  }
  if (key == 'a' || key == 'A') {
    moveLeft = true;
  }
  if (key == 'd' || key == 'D') {
    moveRight = true;
  }
}

//checks when WASD is released, and stops player movement depending
void keyReleased() {
  if (key == 'w' || key == 'W') {
    moveUp = false;
  }
  if (key == 's' || key == 'S') {
    moveDown = false;
  }
  if (key == 'a' || key == 'A') {
    moveLeft = false;
  }
  if (key == 'd' || key == 'D') {
    moveRight = false;
  }
}

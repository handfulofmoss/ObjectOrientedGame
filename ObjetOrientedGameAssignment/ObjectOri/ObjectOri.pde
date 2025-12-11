PImage otterUp; //<>//
PImage otterDown;
PImage otterLeft;
PImage otterRight;
 //<>//
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

void setup() {
  size(400, 400);
  background(190, 231, 232);
  noStroke();
  fill(232, 249, 250);
  rect(0, 0, 400, 80);
  aboveWater=true;
  otterUp = loadImage("otterUp.png");
}

void draw() {
  background(190, 231, 232);
  fill(232, 249, 250);
  rect(0, 0, 400, 80);
  //displays needed assets
  player.drawOtter();
  player.movement();
  timer.display();
  timer.count();
}
//checks when WASD is pressed to indicate player movement
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
//checks when WASD are released to stop player movement
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

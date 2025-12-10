PImage otterUp;
PImage otterDown;
PImage otterLeft;
PImage otterRight;

boolean moveUp;
boolean moveDown;
boolean moveLeft;
boolean moveRight;

PVector position;
PVector speed;
PVector acceleration;

float timer = 0;
boolean timerOn = false;

Otter player = new Otter();

void setup() {
  size(400, 400);
  background(190, 231, 232);
  otterUp = loadImage("otterUp.png");
}

void draw() {
  background(190, 231, 232);
  player.drawOtter();
  player.movement();
}

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

class Otter {


  Otter() {
    position = new PVector(200, 200);
    speed = new PVector(3,3);
    acceleration = new PVector(9.81,9.81);
  }

  void drawOtter() {
    image(otterUp, position.x, position.y, otterUp.width/12, otterUp.height/12);
  }

  void movement() {
    
    if (moveUp == true) {
      position.y = position.y - speed.y;
    }
    if (moveDown == true) {
      position.y = position.y + speed.y;
    }
    if (moveLeft == true) {
      position.x = position.x - speed.x;
    }
    if (moveRight == true) {
      position.x = position.x + speed.x;
    }
  }
}

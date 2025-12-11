class Otter {

  //defines the current position and speed of the player
  Otter() {
    position = new PVector(300, 30);
    speed = new PVector(2.5, 2.5);
    //acceleration = new PVector(9.81,9.81);
  }

  void drawOtter() {
    //displays the player
    image(otterUp, position.x, position.y, otterUp.width/12, otterUp.height/12);
  }

//variables for movement depending on direction
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

//if player is above water, movement is stoped
    if (position.y < 30) {
      position.y = 30;
      aboveWater=true;
    }
    //checks for when player is above water or not
    if (position.y > 60) {
      aboveWater=false;
    }
  }
} //<>//

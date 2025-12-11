class AirTimer {
  //variable for the air timer
  int timerCount = 0;
  boolean timerOn = false;
  boolean gameLose = false;

  void display() {
    //when above water air timer is reset to off
    if (aboveWater == true) {
      timerOn=false;
      //when not above water time is set back to on
    } else {
      timerOn = true;
    }

    fill(0);
    rect(10, 10, 180, 35);
    fill(255);
    rect(12, 12, 176, 31);

    //checks current status of timer and adjust the avalible air bars visual to indicate
    fill(28, 132, 138);
    if (timerCount <= 20) {
      rect(14, 14, 30, 27);
    }
    if (timerCount <= 15) {
      rect(14+35, 14, 30, 27);
    }
    if (timerCount <= 10) {
      rect(14+70, 14, 30, 27);
    }
    if (timerCount <= 5) {
      rect(14+105, 14, 30, 27);
    }
    if (timerCount <= 0) {
      rect(14+140, 14, 30, 27);
      //when air bar reaches 0, game condition is switched to lost so game over
      //screen can be shown and game can be reset
      gameLose = true;
    }
  }
 //<>//
  void count() {
    //timer is set to a reasonable speed based on the current frame rate of the game
    if (timerOn == true) {
      if (frameCount%20 == 0) { //<>//
      timerCount = timerCount +1;
    }
    }
    //when timer is off; player is above water, timer will reset and stay at 0
    //untill underwater again
    if (timerOn == false) {
      timerCount = 0;
    }
  }
}

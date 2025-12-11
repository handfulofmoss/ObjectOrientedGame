class AirTimer {
  
  //variables for timer components
  int timerCount = 0;
  boolean timerOn = false;
  boolean gameLose = false;

  void display() {
    //when above water air timer is reset
    if (aboveWater == true) {
      timerOn=false;
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
      //when airtimer runs out game will be chaned to lose and game over screen will display
      gameLose = true;
    }
  }

  void count() { //<>//
    //corrects the timer to be paced more reasonably based on the current frame rate
    if (timerOn == true) {
      if (frameCount%20 == 0) {
      timerCount = timerCount +1; //<>//
    }
    }
    //when above the surface, the time will be reset untill condition is no longer met
    if (timerOn == false) {
      timerCount = 0;
    }
  }
}

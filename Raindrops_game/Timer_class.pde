class Timer {

  int savedTime; //when timer started
  float totalTime; //how long timer should last

  Timer (float tempTotalTime) {
    totalTime = tempTotalTime;
  }

  //starting the timer
  void start() {
    savedTime = millis(); //when the timer starts it stores the current time in milliseconds
  }

  boolean isFinished() { // Check how much time has passed

      int passedTime = millis() - savedTime;
    if (passedTime > totalTime) {
      return true;
    } 
    else {
      return false;
    }
  }
}

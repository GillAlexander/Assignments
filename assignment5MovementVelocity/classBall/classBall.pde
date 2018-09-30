Ball newBall;
void setup(){
    size(800, 600);
    stroke(100, 200, 100);
    strokeWeight(50);
    frameRate(60);
    
    newBall = new Ball(20);
    // newBall2 = new Ball(420, 80, 500, 500);
    // newBall3 = new Ball(280, 700, 500, 500);
    
  }
  float time;
  float frameTime;
  long currentTime;
  void draw(){
    background(255);
    currentTime = millis();
    frameTime = (currentTime - time) * 0.001f;
    newBall.draw();

    
    // newBall2.createBall();
    // newBall3.createBall();
    
    
    time = currentTime;
  }
// Lots of balls

// Use your knowledge of classes and objects to make the program handle 10s of balls.
// Give them different colors, different speeds.
PVector ballLocation = new PVector(100, 100), ballVelocity = new PVector(10, 15);



void setup() {
  size(1000,800);
  smooth();
}

void draw() {
  
  background(255);
  strokeWeight(50);
  fill(255,10);
  rect(0,0,width,height);
  
  // Add the current speed to the location.
 ballLocation.add(ballVelocity);

  // Check for bouncing
  if ((ballLocation.x > width) || (ballLocation.x < 0)) {
    ballVelocity.x = ballVelocity.x * -1;
  }
  if ((ballLocation.y > height) || (ballLocation.y < 0)) {
    ballVelocity.y = ballVelocity.y * -1;
  }

  // Display at x,y location
  stroke(0);
  fill(175);
  point(ballLocation.x, ballLocation.y);
}

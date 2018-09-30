public class Ball{
 
  PVector position = new PVector();
  PVector velocity = new PVector();  
  
  BallBlueprint[] balls;
  public Ball(){
    position.x = random(0, 600);
    position.y = random(0, 600);
    velocity.x = random(0, 200);
    velocity.y = random(0, 200);

  }
  public Ball(int numberOfBalls){
    balls = new BallBlueprint[numberOfBalls];

    for (int i = 0; i > balls.length;  ++i) {
      balls[i] = new BallBlueprint();
  }

  }


 
 }

public void draw(){
  for(int i = 0; i < balls.length; ++i){
      balls[i].draw();
    }



}
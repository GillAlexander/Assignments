public class ball{
 
  PVector position = new PVector();
  PVector velocity = new PVector();  
  
  public ball(float x, float y, float a, float b){
    position.x = x;
    position.y = y;
    velocity.x = a;
    velocity.y = b;
  }
  
  public void createBall(){
    position.x = position.x + (velocity.x * frameTime);
    position.y = position.y + (velocity.y * frameTime);
  
    point(position.x, position.y);
    
    velocity.y = velocity.y + (10 * frameTime);
    //velocity.x = velocity.x + (10 * frameTime);
    
    
    if((position.x > width) || (position.x < 0)){
    velocity.x = -velocity.x;
   
     if (position.x > width){
      position.x = width -1;
   }
}

  if(position.y > height){
      position.y = height -5;
      velocity.y = -velocity.y;
      velocity.y = velocity.y * 1f;
      
     
   }
   
  if (position.y < 0 ){
      position.y = 5;
      velocity.y = -velocity.y;
  } 
}
 
  
  
}
  ball newBall;
  
  void setup(){
    size(600, 400);
    stroke(100, 200, 100);
    strokeWeight(50);
    frameRate(60);
    
    newBall = new ball(100, 100, 500, 500);
    newBall = new ball(100, 100, 500, 500);
    
  }
  float time;
  float frameTime;
  long currentTime;
  void draw(){
    background(255);
    currentTime = millis();
    frameTime = (currentTime - time) * 0.001f;
    newBall.createBall();
    newBall.createBall();
    
    
    time = currentTime;
  }

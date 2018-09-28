PVector position = new PVector(); 
PVector velocity = new PVector();
float acceleration;
float tpf;
float frameTime;
float time;
void setup(){
 size(500, 400);
 stroke(100, 200, 100);
 strokeWeight(50);
 frameRate(10);
 
 position.x = 50;
 position.y = 50;
 velocity.x = 5; 
 velocity.y = 50;
 tpf = 1f / 60f;
 acceleration = 1000;
}

  long currentTime;
void draw() {
  background(255);
  currentTime  = millis();
  frameTime = currentTime - time;
frameTime = frameTime * 0.001f;
println(frameTime);

  point(position.x, position.y);
  position.x = position.x + (velocity.x * frameTime);
  position.y = position.y + (velocity.y * frameTime);
  
  velocity.y = velocity.y + (acceleration * frameTime);
  velocity.x = velocity.x + (acceleration * frameTime);
  
changeDirection();
  
  time = currentTime;

}





void changeDirection(){
   
 if((position.x > width) || (position.x < 0)){
    velocity.x = -velocity.x;
   
   if (position.x > width){
      position.x = width -2;
   }
}

  if((position.y > height) || (position.y < 0)){
      velocity.y = -velocity.y;
      velocity.y = velocity.y * 0.9f;
      
    if (position.y > height){
      position.y = height -2;
    }  
}
  
}

/* Create the bouncing ball example.
Make it bounce of the edges of the screen. 
Use tpf to control movement every update 
Change the program to make the ball come out 
from the left of the screen when it exits on the right.
Use a vector class to handle position and velocity.  */

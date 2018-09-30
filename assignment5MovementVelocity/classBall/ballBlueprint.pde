public class BallBlueprint{
  PVector position = new PVector();
  PVector velocity = new PVector();  
  int size = 50;
  
	public BallBlueprint(){
    position = new PVector();
    position.x = random(0, 600);
    position.y = random(0, 600);
    velocity = new PVector();
    velocity.x = random(0, 200);
    velocity.y = random(0, 200);

 	}


public void draw(){
	position.x = position.x + (velocity.x * frameTime);
  position.y = position.y + (velocity.y * frameTime);
  
    
    
    velocity.y = velocity.y + (10 * frameTime);
    fill(255);
    ellipse(position.x - size/2, position.y - size/2, size, size);
    //velocity.x = velocity.x + (10 * frameTime);

	cantEscape();
	
}

public void cantEscape(){
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
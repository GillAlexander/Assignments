public class Human{
  
  PVector position;
  PVector velocity;
  int size = 50;
  
  public Human(){
     position = new PVector();
     position.x = random(0,width);
     position.y = random(0, height);
     
     velocity  = new PVector();
     velocity.x = random(-5, 5);
     velocity.y = random(-5, 5);
  }
  
  public Human(float x, float y){
     position = new PVector(x, y);
     
     velocity  = new PVector();
     velocity.x = random(-12, 12);
     velocity.y = random(-12, 12);
  }

  public void update(){
    position.add(velocity); 
    
    
    if(position.x > width || position.x < 0){
        velocity.x = -velocity.x;
    }
    if(position.y > height || position.y < 0){
        velocity.y = -velocity.y;
    }
  }
  
  public void draw(){
    fill(255);
   ellipse(position.x - size/2, position.y - size/2, size, size); 
  }
  
}

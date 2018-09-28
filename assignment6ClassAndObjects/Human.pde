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
    
    
    if(position.x > width){
        position.x = 0;
    }
    if (position.x < 0) {
      position.x += width;
    }

    if(position.y > height){
        position.y = 0;
    }
    if (position.y < 0) {
      position.y += height;
    }
  }
  
  public void draw(){
    fill(255);
   ellipse(position.x - size/2, position.y - size/2, size, size); 
  }
  
}

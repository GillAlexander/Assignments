public class Zombie extends Human {
  
  
  public Zombie(){
    super();
    
    velocity.x = velocity.x /2.5;
    velocity.y = velocity.y /2.5;
    
    
  }
  
  public Zombie(float x, float y){
    super(x, y);
    
    velocity.x = velocity.x /2.5;
    velocity.y = velocity.y /2.5;
    
    
  }
  
  void draw(){
    
    fill(160, 225, 0);
    ellipse(position.x - size/2, position.y - size/2, 75, 75);
    
  }
  
}

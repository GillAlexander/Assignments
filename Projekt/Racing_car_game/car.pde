public class Car{
  
  int rectX;
  int rectY;
  PVector carPosition;
  PVector velocity;
  
  int value = 0;
  public Car(float x, float y){
    carPosition = new PVector(x, y);
    velocity = new PVector(1, 1);
    
    
  }
  
   public Car(){
    
    
    
  }
  
  void draw(){
    fill(224, 134, 142);
    rect(carPosition.x, carPosition.y, 25, 45);
    carPosition.add(velocity);
    
    
    if(keyPressed){
      velocity.sub(0, 0);
   }
   else{
       velocity.add(0, 0);
     
   }
   
    carCantEscapeTheScreen();
  } 
  
  void carCantEscapeTheScreen(){
  
  if(carPosition.x > width || carPosition.x < 0){
        velocity.x = -velocity.x;
    }
    if(carPosition.y > height || carPosition.y < 0){
        velocity.y = -velocity.y;
    }
}
}

public class Car{
  
  int rectX;
  int rectY;
  PVector carPosition;
  PVector velocity;
  float speed = 1;
  public Car(float x, float y){
    carPosition = new PVector(x, y);
    velocity = new PVector(0, 0);
    
    
  }
  
   public Car(){
    
    
    
  }
  
  void draw(){
    fill(224, 134, 142);
    rect(carPosition.x, carPosition.y, 25, 45);
    carPosition.add(velocity);
    
    
   // if(keyPressed){
   //   velocity.sub(0, 0);
   //}
   //else{
   //    velocity.add(0, 0);
     
   //}
    carCantEscapeTheScreen();
    keyPressed();
    keyReleased();
  } 
  
  
  boolean up = false;
  boolean down = false;
  boolean left = false;
  boolean right = false; 
  
  void keyPressed() {
    switch(keyCode){
      
    case UP:
      up = true;
    break;
    case LEFT: 
      left = true;
    break;
    case DOWN: 
      down = true;
    break;
    case RIGHT:
      right = true;
    break;
  }
  }
  
  
  
  void keyReleased() {
   switch(keyCode){
      
    case UP:
      up = false;
    break;
    case LEFT: 
      left = false;
    break;
    case DOWN: 
      down = false;
    break;
    case RIGHT:
      right = false;
    break;
  }
  }
  
  void updatePositions() {  
       if(up == true){  
         velocity.y = velocity.y + 1; 
       }  
       if(down == true){  
          velocity.y = velocity.y - 1;  
       }  
       if(left == true){  
         velocity.x = velocity.x + 1;  
       }  
       if(right == true){  
          velocity.x = velocity.x - 1;  
       }
}  
  
  

  
  //void carMove(float x, float y){
  // carPosition.x =  carPosition.x + y;
  // carPosition.y = carPosition.y + y;
    
  //}
  
  void carCantEscapeTheScreen(){
  if(carPosition.x > width || carPosition.x < 0){
        velocity.x = -velocity.x;
    }
    if(carPosition.y > height || carPosition.y < 0){
        velocity.y = -velocity.y;
    }}
}


  //switch(keyCode){
  //  case UP:
  //  velocity.sub(0, 1);
    
  //  case LEFT: 
  //  velocity.sub(1, 0);
    
  //  case DOWN: 
  //  velocity.add(0, 1);
    
  //  case RIGHT:
  //  velocity.add(1, 0);
  //}
  

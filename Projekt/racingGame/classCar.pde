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
    
    
  } 
  
  
  
  

    /* switch(key == CODED){
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
      default:

      break;
    }
} */

  
  

  //  switch(keyCode){
      
  //   case UP:
  //     up = false;
  //   break;
  //   case LEFT: 
  //     left = false;
  //   break;
  //   case DOWN: 
  //     down = false;
  //   break;
  //   case RIGHT:
  //     right = false;
  //   break;
  //   default:

  //   break;
  // }
  

  void updatePositions() {  
       if(up == true){  
         carPosition.y = carPosition.y - 2; 
       }  
       if(down == true){  
          carPosition.y = carPosition.y + 2;  
       }  
       if(left == true){  
         carPosition.x = carPosition.x - 2;  
       }  
       if(right == true){  
          carPosition.x = carPosition.x + 2;  
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
  

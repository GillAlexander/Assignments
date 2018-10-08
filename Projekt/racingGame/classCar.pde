public class Car{
  
  int rectX;
  int rectY;
  PVector carPosition;
  PVector velocity;
  float speed = 1;

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  int carWidth = 25;
  int carHeight = 45;

=======
>>>>>>> parent of d8a762a... musfuck
=======
>>>>>>> parent of d8a762a... musfuck
=======
>>>>>>> parent of f42008a... aha
  public Car(float x, float y){
    carPosition = new PVector(x, y);
    velocity = new PVector(0, 0);
  }
  
  
  void draw(){
    fill(224, 134, 142);
    rect(carPosition.x, carPosition.y, 25, 45);
    carPosition.add(velocity);
    updatePositions();
    carCantEscapeTheScreen();
  } 

  void updatePositions() {  

       if(up == true){  
         carPosition.y = carPosition.y - 1; 
       }  

       // if(up == true){  
       //   carPosition.y = carPosition.y - 1; 
       // }  

       if(down == true){  
          carPosition.y = carPosition.y + 1;  
       }  

       if(left == true){  
         carPosition.x = carPosition.x - 1;  
       }  
       if(right == true){  
          carPosition.x = carPosition.x + 1;  
       }

       
       

       if (moreCarSpeed) {
         velocity.y =- 1;

            if(left == true){  
              carPosition.x = carPosition.x - 2;  
             }  
             if(right == true){  
              carPosition.x = carPosition.x + 2;  
             }
       }
       if (moreCarSpeed == false) {
         velocity.y = 0;
       }
}  
  
  
  void carCantEscapeTheScreen(){
  if(carPosition.x > 765){
        carPosition.x = 765;
    }
    if (carPosition.x < 5) {
      carPosition.x = 5;
    }

    if(carPosition.y > 965){
        carPosition.y = 965;
    }
    if(carPosition.y < 5) {
      carPosition.y = 5;
    }

  }
}
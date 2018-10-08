public class ObjectArray{
  int objectVelocity = 1;
  PVector objectPosition;
  public ObjectArray(){
    objectPosition = new PVector(200, 200);

     objectPosition.x = random(0,width);
     objectPosition.y = random(0, height);
  }

  void draw(){

    fill(120, 120, 240);

       objectPosition.y+=(objectVelocity);
       rect(objectPosition.x, objectPosition.y, 50, 50); 
       
   objectCantEscapeTheScreen();
   ifCarStopsSoDoesTheWorld();
  }

void objectCantEscapeTheScreen(){
  
    if(objectPosition.y > height){
        objectPosition.y = -20;
        objectPosition.x = random(width);
    }}

    void ifCarStopsSoDoesTheWorld(){
      if (pause == true) {
         objectVelocity = 0;
      }
      if (pause == false) {
        objectVelocity = 1;
      }
    }
}

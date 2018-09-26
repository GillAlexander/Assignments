public class ObjectArray{

  PVector objectPosition;
  public ObjectArray(){
    objectPosition = new PVector(200, 200);

   objectPosition.x = random(0,width);
     objectPosition.y = random(0, height);
  }

  void draw(){

    fill(120, 120, 240);
       rect(objectPosition.x, objectPosition.y, 50, 50); 
       objectPosition.y+=random(1.0, 2.0);
       
   objectCantEscapeTheScreen();
  }

void objectCantEscapeTheScreen(){
  
    if(objectPosition.y > height){
        objectPosition.y = -20;
        objectPosition.x = random(width);
    }}
}

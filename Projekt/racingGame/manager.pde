class Manager{

  PVector object;
  ObjectArray[] spawnObjects;

  
  public Manager(int numberOfObjects){
    
    spawnObjects = new ObjectArray[numberOfObjects];

    for (int i = 0; i < spawnObjects.length; ++i) {
      spawnObjects[i]  = new ObjectArray();
    }
  }
  
  
  public void draw(){
    
    for (int i = 0; i < spawnObjects.length; ++i) {
      spawnObjects[i].draw();
    }

  }
// loopar igenom alla object
//när bilens velocity = 0 == pause blir true
//
}
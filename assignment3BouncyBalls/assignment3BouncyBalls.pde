int frame = 0;
float multiplier = 0.002; 
int numberOfPoints = 100; 
int dotDistance = 10; 
int i = 0; 
void setup()
{
  size(1000, 680);
  strokeWeight(10);
  frameRate(50);
}

void draw() {     
  background(255);   
  
  //Draw animated point    
 for (int i = 0; i < 1000; i = i + dotDistance) {            


stroke(56, 37, 37);       
point(i, 300 + 60*sin((i + frame) * 0.05));     
stroke(236, 239, 10);        
point(i, 300 + 60*cos((i + frame) * 0.05));     


}        
frame++; 
}

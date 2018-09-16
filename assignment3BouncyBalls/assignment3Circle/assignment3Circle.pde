int frame = 0;
float multiplier = 0.002; 
float numberOfPoints = 2*PI/100; 
int dotDistance = 10; 
int i = 0; 
void setup()
{
  size(1000, 1000);
  strokeWeight(10);
  frameRate(20);
}


float t;
void draw() {     
  background(255);
  
  
  count(10);
  //Draw animated point    
//stroke(56, 37, 37);       
//point(i, 300 + 60*sin((i + frame) * 0.05));     
//stroke(236, 239, 10);        
//point(i, 300 + 60*cos((i + frame) * 0.05));     

}

void count(float n)
    {
      
      for(float i = 0; i < 156*4; i++){
        
      point((width/2 + sin( i * TWO_PI / n) * 100 ), (height/2 + cos( i * TWO_PI / n) * 100 ));
      frame++; 
     }}

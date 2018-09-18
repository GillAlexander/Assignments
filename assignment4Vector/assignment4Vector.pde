PVector circlePosition = new PVector(), mousePosition = new PVector();
float circleSpeed =15;
void setup(){
 size(1000, 1000);
 stroke(5);
 strokeWeight(5);
 
}

void draw(){
  mousePosition.set(mouseX, mouseY);
  mousePosition.sub(circlePosition);
  mousePosition.normalize();
  mousePosition.mult(circleSpeed);
  circlePosition.add(mousePosition);
  ellipse(circlePosition.x, circlePosition.y, 100, 100);
  
  
}

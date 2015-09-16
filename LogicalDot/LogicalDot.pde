void setup() {
  size(800, 800);
}

void draw() {
  fill(43,34,34);
   //2. make it a nice color

   //3. if the mouse is pressed, fill the circle with a different color          
if(mousePressed &&(mouseButton == LEFT)){
  fill(23,45,233);
  ellipse(mouseX,mouseY,400,400);
  textSize(50);
  text("Right Click!",400,400);
}
if(mousePressed &&(mouseButton == RIGHT)){
   //1. draw an ellipse
   fill(23,234,234);
ellipse(400,400,100,100);
}
}

// Copyright Wintriss Technical Schools 2013





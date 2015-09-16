
//1. Make a variable to hold the X co-ordinate of the dot, and set it to something.
int xpos = 0;
int screenx = 1500;
int screeny = 200;
void setup() {
  size(screenx, screeny);
  background(244,223,2);
}

void draw() {
  //3. make it a nice color
 fill(7,234,234);
 //background(244,223,2);
  //4. if the mouse is pressed...
    if(mousePressed){
       xpos=xpos+2000/5;
    }
     
     if(xpos >= screenx){
       xpos=xpos-10000;
       xpos=xpos+0;
       playSound();
     }
//5. ... change the X co-ordinate so that the dot moves to the right
      
  //2. Draw an ellipse of height and width 100. Make sure to use your variable for the X position.
ellipse(xpos,100,100,100);
//6. Make your dot move really fast so that it can win the race (you have to figure out what part of your code to change)

//7. Use this method to play a ding when your dot crosses the finish line. 


}

import ddf.minim.*;
boolean soundPlayed = false;
void playSound() {
  if (!soundPlayed) {// Copyright Wintriss Technical Schools 2013
    Minim minim = new Minim(this);        
    AudioSample sound = minim.loadSample("moo.wav");
    sound.trigger();
    soundPlayed = true;
  }
}





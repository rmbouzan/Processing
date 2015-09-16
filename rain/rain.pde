PImage cloud;
PImage rain;
int rainposy = 500;
void setup(){
size(1000,1000);
cloud = loadImage("cloud.png");
rain = loadImage("rain.jpg");




}
void draw(){
  background(254,254,254);
image(cloud,250,250);  
if(mousePressed){
  image(rain,250,rainposy);
  rainposy=rainposy+1;
 playSound();
}
   
  
  
 
}
import ddf.minim.*;
boolean soundPlayed = false;
void playSound(){
  if (!soundPlayed) {// Copyright Wintriss Technical Schools 2013
    Minim minim = new Minim(this);        
    AudioSample sound = minim.loadSample("i-will-kill-you.wav");
    sound.trigger();
    soundPlayed = true;
  }
}




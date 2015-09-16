The Rain Game

In Processing, start with a new sketch that contains setup() and draw() methods. Ask your teacher if you don't know how to do this. The method declarations under each step will help you make the game.

1. Make a canvas for your game.
  size(int width, int height)        //in setup method
  background(int red, int green, int blue)  //in draw method

2. Draw a raindrop at the top of the screen.
  ellipse(int x, int y, int width, int height)  //in draw method
  fill(int red, int green, int blue)      //in draw method
  stroke(int red, int green, int blue) or noStroke()  //in draw 

3. Make the rain fall down the screen.
  //make a variable for the ball's Y position and change it in the draw() method.

4. When the rain falls off the bottom of the canvas, start a new rain drop falling from the top.

5. Make the rain start at a random position at the top (X position). The random method returns an int.
  int random(int maxValue){}    

6. Draw a bucket at the bottom of the screen.
  void rect(int x, int y, int width, int height){}

7. Make the bucket move over and back with the mouse. Hint: mouseX

8. Add an int variable to hold the score (above the setup method). If the rain falls in the bucket increase the score by 1. If it doesn’t, decrease the score by 1, but don’t let the score go negative. Figure it out by yourself or use this method…
void checkCatch(int x){
if (x > mouseX && x < mouseX+100)
      score++;
   else if (score > 0)
     score--;
println(“Your score is now: “ + score);
}

9. Print the score on the screen.
fill(0, 0, 0);
textSize(16);
text("Score: " + score, 20, 20);

10. Decide how many points the user needs to score to win. Make the game stop when the winning score is reached (stop drawing rain drops) and put up a message to say so.
void text(String winningMessage, int x, int y){}
void textSize(int fontSize){}  //if it’s not big enough

11. Make a sound when the rain drop falls on the ground or in the bucket.
  //first drop the sound file onto your sketch, then….

  import ddf.minim.*;       //at the very top of your sketch
  Minim minim;        //as a member variable
  AudioSample sound;      //as a member variable
  minim = new Minim (this);    //in the setup method
  sound = minim.loadSample("BD.wav", 128);//in the setup method
  sound.trigger();        //in draw method (when the rain drop hits)

12. Play your game and feel like a great environmentalist!


-----  COOL VARIATIONS FOR COOL PEOPLE ----

Make the speed of the raindrop increase as the score increases.
Make the bucket fill up as the score increases (divide the bucket into different sections so they can be different colors).
Add text at the beginning to explain the game.
Add messages to encourage the user to finish.
Add a background image for your game.
PImage backgroundImage;       //as a member variable
backgroundImage = loadImage("image.jpg");  //in the setup method
image(backgroundImage, 0, 0);      //in draw method image(backgroundImage, 0, 0, width, height);  
    //if you want to resize it




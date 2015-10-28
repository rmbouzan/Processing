int sizex = 500;
int sizey = 500;
void setup() {
  size(1920, 1080);


  for (int i = 0; i < 150; i = i+1) {
    if (sizex%10==0 || sizey%10==0) {
      fill(255, 0, 0);
    }
    else {
      fill(255, 255, 255);
    }
    ellipse(1920/2, 1080/2, sizex, sizey);
    println(sizex);
    println(sizey);
    sizex=sizex-30;
    sizey=sizey-30;
  }
}


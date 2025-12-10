PImage otterUp;
PImage otterDown;
PImage otterLeft;
PImage otterRight;

void setup() {
  size(400,400);
  background(255);
  otterUp = loadImage("otterUp.png");
}

void draw(){
  image(otterUp,0,0, otterUp.width/12,otterUp.height/12);

}

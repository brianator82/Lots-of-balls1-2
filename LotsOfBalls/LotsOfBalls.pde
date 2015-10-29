//declare variables
float x, y, velX, velY, diam;
float x2, y2, velX2, velY2, diam2;
int count = 2;
void setup() {
  //set size of canvas
  size(800, 600);

  //initialize variables
float[] x= new float[count];
float[] y= new float[count];
float[] velX= new float[count];
float[] velY= new float[count];
float[] diam = {3-,80};
void setup() {
  //set size of canvas
  size(800, 600);
   x[0] = width/2;
 x[1] = width/4;
 y[0] = height/2;
  y[1] = height*.8;
 velX[0] = random(-5, 5);
 velX[1] = random(-1, 1);
velY[0] = random(-5, 5);
velY[1] = random(-10, 10);
 }
}

void draw() {
  //draw background to cover previous frame
  background(0);

  //draw ball
  ellipse(x[1], y[1], diam[1], diam[1]);

  //add velocity to position
  x += velX;
  y += velY;

  //bounce ball if it hits walls
  if (x + diam/2 >= width) {
    velX = -abs(velX);    //if the ball hits the right wall, assign x velocity the negative version of itself
  } else if (x - diam/2 <= 0) {
    velX = abs(velX);     //if the ball hits the left wall, assign x velocity the positive version of itself
  }
  if (y + diam/2>=height) {
    velY = -abs(velY);
  } else if (y - diam/2 <= 0) {
    velY = abs(velY);
  }
 //draw ball
  ellipse(x2, y2, diam2, diam2);

  //add velocity to position
  x2 += velX2;
  y2 += velY2;

  //bounce ball if it hits walls
  if (x2 + diam2/2 >= width) {
    velX2 = -abs(velX2);    //if the ball hits the right wall, assign x velocity the negative version of itself
  } else if (x2 - diam2/2 <= 0) {
    velX2 = abs(velX2);     //if the ball hits the left wall, assign x velocity the positive version of itself
  }
  if (y2 + diam2/2 >= height) {
    velY2 = -abs(velY2);
  } else if (y2 - diam2/2 <= 0) {
    velY2 = abs(velY2);
  }
}
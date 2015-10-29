//declare variables
float x, y, velX, velY, diam;
float x2, y2, velX2, velY2, diam2;
void setup() {
  //set size of canvas
  size(800, 600);

  //initialize variables
  x = width/2;
  x2= width/4;
  y = height/2;
  y2= height/4;
  diam = 80;
  diam2= 80;
  velX = 5;
  velX2= 6;
  velY = 5;
  velY2= 6;
}

void draw() {
  //draw background to cover previous frame
  background(0);

  //draw ball
  ellipse(x, y, diam, diam);

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
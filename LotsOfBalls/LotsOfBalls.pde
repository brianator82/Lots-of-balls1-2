//variable which dictates the amount of components inside of it
int count=100;
//creaing the array
float[] x = new float [count];
float[] y = new float[count];
float[] velX = new float[count];
float[] velY = new float[count];
float[] diam = new float[count];
 void setup() {
   size(800, 600);//sets the size of the canvas
 int i = 0; //variable for the array
 //while loop for values of variables while the i is less than count
  while (i < count) {
    x[i] = random(width);
    y[i] = random(height);
    velX[i] = random(-5, 3);
    velY[i] = random(-5, 3);
    diam[i] = 5+i;
    i++;//increases i by 1
  }
 }
 
void draw(){
//draw background to cover previous frame
   background(0);
  
  int i = 0;//variable for array components
  while (i < count) {
    //draw ball
    ellipse(x[i], y[i], diam[i], diam[i]);
    //add velocity to position
    x[i] += velX[i];

    y[i] += velY[i];


    //bounce ball if it hits walls
    if (x[i] + diam[i]/2 >= width) {
      velX[i] = -abs(velX[i]);    //if the ball hits the right wall, assign x velocity the negative version of itself
    } else if (x[i] - diam[i]/2 <= 0) {
      velX[i] = abs(velX[i]);     //if the ball hits the left wall, assign x velocity the positive version of itself
    }

    if (y[i] + diam[i]/2 >= height) {
      velY[i] = -abs(velY[i]);// if the ball hits the bottom wall, assign y velocity the negative version of itself
    } else if (y[i] - diam[i]/2 <= 0) {
      velY[i] = abs(velY[i]);// if the ball hits the top wall, assign y velocity the positive version of itself
    }
    i++;
   }
}
// Exercise 5-5: Rewrite the following code so that the ball not 
// only moves horizontally, but vertically as well. 

int x = 0;
int speed = 2;

void setup() {
  size(480, 270);
}

void draw() {
  background(255);

  // Add the current speed to the x location.
  x = x + speed;

  // Remember, || means "or."
  if ((x > width) || (x < 0)) {
    // If the object reaches either edge, 
    // multiply speed by -1 to turn it around.
    speed = speed * -1;
  }

  // Display circle at x location
  stroke(0);
  fill(175);
  ellipse(x, 100, 32, 32);
}
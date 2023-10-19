Car[] bob; //i actually needed so much help from my sister :')

void setup() {
  size(400, 400);
  bob = new Car[50];
  resetCars();
}

void draw() {
  background(68, 0, 204);
  for (int i = 0; i < bob.length; i++) {
    bob[i].randomWalk();
    bob[i].show();
  }
}

void mousePressed() {
  resetCars();
}

void resetCars() {
  for (int i = 0; i < bob.length; i++) {
    bob[i] = new Car(color(i * 2), random(width), random(height), random(1, 5));
  }
}

class Car {
  color myC;
  float myX, myY, myYspeed, myXspeed;

  Car() {
    myC = color(255);
    myX = width / 2;
    myY = height / 2;
    myYspeed = 1;
    myXspeed = 1;
  }

  Car(color c, float x, float y, float s) {
    myC = c;
    myX = x;
    myY = y;
    myYspeed = s;
    myXspeed = s;
  }

  void show() {
    stroke(255);
    fill(179, 217, 255);
    ellipse(myX, myY, 25, 25);
  }

  void randomWalk() {
    myY += myYspeed;
    myX += random(-myXspeed, myXspeed);

    if (myY > height || myY < 0) {
      myYspeed *= -1;
    }

    if (myX > width || myX < 0) {
      myXspeed *= -1;
    }
  }
}

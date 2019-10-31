Particle[] Bob;
OddballParticle Bobby;
void setup()
{
  size(500,500);
  Bob = new Particle[420];
  for(int i = 0; i < Bob.length; i++) {
    Bob[i] = new Particle();
    Bob[i].angle();
    Bob[i].speed();
  }
  Bobby = new OddballParticle();
}
void draw()
{
  background(0);
  for(int i = 0; i < Bob.length; i++) {
    Bob[i].move();
    Bob[i].show();
  }
  Bobby.move();
  Bobby.show();
}
class Particle
{
  double myX, myY, myAngle, mySpeed;
  Particle() {
    myX = myY = 250;
  }
  void angle() {
    myAngle = Math.random() * 2 * Math.PI;
  }
  void speed() {
    mySpeed = Math.random() * 10;
  }
  void move() { 
    myX = myX + Math.cos(myAngle) * mySpeed;
    myY = myY + Math.sin(myAngle) * mySpeed;
  }
  void show() {
    fill(255);
    ellipse((float)myX, (float)myY, 7, 7);
  }
}

class OddballParticle {
  int myX, myY, num;
  OddballParticle() {
    myX = myY = 250;
  }
  void move() {
    if(mouseX > myX) {
      myX = myX + (int)(Math.random() * 7) - 1;
    } else {
      myX = myX + (int)(Math.random() * 7) - 4;
    }
    if(mouseY > myY) {
      myY = myY + (int)(Math.random() * 7) - 1;
    } else {
      myY = myY + (int)(Math.random() * 7) - 4;
    }
  }
  void show() {
    fill(255, 127, 0);
    ellipse(myX, myY, 10, 10);
  }
}

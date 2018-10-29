public class BouncingBallEffect extends TraversingEffect {



  public BouncingBallEffect(int channel, int pitch, int velocity) {
    super( channel, pitch, velocity);
    location.y = 7;
    vel.x = 1;
    vel.y=2;
    acceleration.x = 0;
    acceleration.y = 0.27;

  }

  public void draw() {
    super.draw();

    println("drawing bouncingball and values " + location.x + " " + location.y);

    //location.add(vel);
    //// Add gravity to velocity
    //vel.add(gravity);

    if (location.y > height) {
      // We're reducing velocity ever so slightly 
      // when it hits the bottom of the window
      vel.y = vel.y * -0.95; 
      location.y = height;
    }
    if (location.y < 0) {
      // We're reducing velocity ever so slightly 
      // when it hits the bottom of the window
      vel.y = vel.y * -0.95; 
      location.y = 0;
    }

    //map( pitch, 41, 77, 0, 360)
    fill(0, 360, 360);
    noStroke();
    ellipse(location.x, location.y, 3, 3);
  }
}

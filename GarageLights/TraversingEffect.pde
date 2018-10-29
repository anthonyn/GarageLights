public abstract class TraversingEffect extends Effect {

  /*
      Extending classes should make sure to 
   --> define a rate
   --> Call super in the draw override
   
   */


  


  public TraversingEffect(int channel, int pitch, int velocity) {
    //rate = 1;

    super( channel, pitch, velocity);
  }

  void move() {
    vel.add(acceleration);
    location.add(vel);
  }

  public void draw() {
    move();
  }

  public boolean checkAlive() {
    if (location.x > width) {
      alive = false;
    }
    return alive;
  }
}

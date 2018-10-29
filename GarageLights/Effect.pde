public abstract class Effect {

  int channel; 
  int pitch; 
  int velocity;

  PVector location;
  PVector vel;
  PVector acceleration;

  boolean alive;

  public Effect(int channel, int pitch, int velocity) {
    
    this.channel = channel;
    this.pitch = pitch;
    this.velocity = velocity;
    
    alive = true;
    
    location = new PVector(0, 0);
    vel = new PVector(1, 0);
    acceleration= new PVector(0, 0);
  }

  public abstract void draw();

  public boolean checkAlive() {
    return alive;
  }
}

public abstract class Effect {

  int channel; 
  int pitch; 
  int velocity;
  
  int x, y;
  
  boolean alive;

  public Effect(int channel, int pitch, int velocity) {
    this.channel = channel;
    this.pitch = pitch;
    this.velocity = velocity;
    alive = true;
  }
  
  public abstract void draw();
  
  public boolean checkAlive(){
   return alive; 
  }
  
  
  
  
}

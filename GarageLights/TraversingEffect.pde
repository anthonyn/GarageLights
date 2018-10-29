public abstract class TraversingEffect extends Effect {

  /*
      Extending classes should make sure to 
      --> define a rate
      --> Call super in the draw override
  
  */
   
  
  int rate;


  public TraversingEffect(int channel, int pitch, int velocity) {
    super( channel, pitch, velocity);
  }

   void move(){
      x += rate;
   }
   
  public void draw(){
   move(); 
  }
  
  public boolean checkAlive() {
    if (x > width){
     alive = false; 
    }
    return alive;
  }
}

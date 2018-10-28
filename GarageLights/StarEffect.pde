public class StarEffect extends Effect{
  
  int c;
  
  
  public StarEffect(int channel, int pitch, int velocity){
   super( channel,  pitch,  velocity);
   c = 150;
  }
  
  
  
  public void draw(){
    println("drawing star and value " + c);
    fill(255,0,0);
    stroke(255,0,0);
    ellipse(20,20, 50, 50);
    c--;
    if (c < 0){
     alive = false; 
    }
    
  }
  
  
}

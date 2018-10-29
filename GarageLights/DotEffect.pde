public class DotEffect extends TraversingEffect{

  public DotEffect(int channel, int pitch, int velocity){
   super( channel,  pitch,  velocity);
   x = 0;
   y = 0;
   rate = 1;
  }
    
  public void draw(){
    super.draw();
    println("drawing dot and values " + x + " " + y);
    fill(255,0,0);
    stroke(255,0,0);
    ellipse(x ,4, 10, 10);
  }
   
}

public class StarEffect extends TraversingEffect {
  
  

  public StarEffect(int channel, int pitch, int velocity) {
    super( channel, pitch, velocity);
    x = 0;
    y = 0;
    rate = 2;
  }

  public void draw() {
    super.draw();
    println("drawing star and value " + x + " " + y);
    fill(0, 255, 0);
    stroke(0, 255, 0);
    
    pushMatrix();
    
    translate(x,3);
    
    int z = 13;
    
    beginShape();
    vertex(0, -50/z);
    vertex(14/z, -20/z);
    vertex(47/z, -15/z);
    vertex(23/z, 7/z);
    vertex(29/z, 40/z);
    vertex(0/z, 25/z);
    vertex(-29/z, 40/z);
    vertex(-23/z, 7/z);
    vertex(-47/z, -15/z);
    vertex(-14/z, -20/z);
    endShape(CLOSE);

    popMatrix();
    
  }
}

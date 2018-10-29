public class DotEffect extends TraversingEffect {

  public DotEffect(int channel, int pitch, int velocity) {
    super( channel, pitch, velocity);
    //location.x = 0;
    //location.y = 0;
    //vel.x = 1;
    //vel.y = 0;
    //acceleration.x = 0;
    //acceleration.y = 0;
  }

  public void draw() {
    super.draw();
    println("drawing dot and values " + location.x + " " + location.y);
    fill(map( pitch, 41, 77, 0, 360), 360, 360);
    noStroke();
    ellipse(location.x, 4, 10, 10);
  }
}

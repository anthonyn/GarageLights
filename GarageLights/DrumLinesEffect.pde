
//Could use an abstract factory and a drumlines factory?

public class DrumLinesEffect extends TraversingEffect {

  DrumLinesEffect(int channel, int pitch, int velocity) {
    super( channel, pitch, velocity);
    location.x = 0;
    location.y = 0;
    acceleration.x = 1;
  }


  public void draw() {
    super.draw();
    println("Pitch is " + pitch);
    println("drawing drumline and values " + location.x + " " + location.y);
    fill(map(pitch, 41, 48, 0, 360), 360, 360);
    stroke(map(pitch, 41, 48, 0, 360), 360, 360);
    ellipse(location.x, pitch - 41, 1, 1);
  }
}

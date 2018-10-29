public class StarEffect extends TraversingEffect {

  float rotateSpeed;
  float rotateStart;

  public StarEffect(int channel, int pitch, int velocity) {
    super( channel, pitch, velocity);

    rotateSpeed = 5;
    rotateStart = random(20);
  }

  public void draw() {
    super.draw();
    println("drawing star and value " + location.x + " " + location.y);

    fill(map(rotateStart, 0, 20, 0, 360 ), 360, 360);
    stroke(map(rotateStart, 0, 20, 0, 360 ), 360, 360);

    pushMatrix();

    translate(location.x, 4);
    rotate(rotateSpeed += rotateStart );
    println(frameCount / 12);
    star(0, 0, 2, 7, 5); 

    popMatrix();
  }

  void star(float x, float y, float radius1, float radius2, int npoints) {
    float angle = TWO_PI / npoints;
    float halfAngle = angle/2.0;
    beginShape();
    for (float a = 0; a < TWO_PI; a += angle) {
      float sx = x + cos(a) * radius2;
      float sy = y + sin(a) * radius2;
      vertex(sx, sy);
      sx = x + cos(a+halfAngle) * radius1;
      sy = y + sin(a+halfAngle) * radius1;
      vertex(sx, sy);
    }
    endShape(CLOSE);
  }
}


//translate(x,3);

//int z = 13;

//beginShape();
//vertex(0, -50/z);
//vertex(14/z, -20/z);
//vertex(47/z, -15/z);
//vertex(23/z, 7/z);
//vertex(29/z, 40/z);
//vertex(0/z, 25/z);
//vertex(-29/z, 40/z);
//vertex(-23/z, 7/z);
//vertex(-47/z, -15/z);
//vertex(-14/z, -20/z);
//endShape(CLOSE);

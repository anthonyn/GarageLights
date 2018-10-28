import themidibus.*; //Import the library

MidiBus myBus; // The MidiBus

EffectFactory ef;

ArrayList<Effect> effects = new ArrayList<Effect>();

void setup() {
  size(126, 8);
  background(0);

  ef = new EffectFactory();

  MidiBus.list(); // List all available Midi devices on STDOUT. This will show each device's index and name.

  myBus = new MidiBus(this, 0, 1); // Create a new MidiBus using the device index to select the Midi input and output devices respectively.
}

void draw() {
  background(0);

  //for ( Effect e : effects) {
  //  println(e.toString());
  //  if (!e.checkAlive()) {
  //    effects.remove(e);
  //  } else {
  //    e.draw();
  //  }
  //}

  for ( int i = effects.size() - 1; i >= 0; i--) {
    effects.get(i).draw();
    if (!effects.get(i).checkAlive()) {
      effects.remove(i);
    }
  }
}

void noteOn(int channel, int pitch, int velocity) {
  // Receive a noteOn
  println();
  println("Note On:");
  println("--------");
  println("Channel:"+channel);
  println("Pitch:"+pitch);
  println("Velocity:"+velocity);
}

void noteOff(int channel, int pitch, int velocity) {
  // Receive a noteOff
  println();
  println("Note Off:");
  println("--------");
  println("Channel:"+channel);
  println("Pitch:"+pitch);
  println("Velocity:"+velocity);

  effects.add(ef.makeEffect(channel, pitch, velocity, "star"));
}

void controllerChange(int channel, int number, int value) {
  // Receive a controllerChange
  println();
  println("Controller Change:");
  println("--------");
  println("Channel:"+channel);
  println("Number:"+number);
  println("Value:"+value);
}

void delay(int time) {
  int current = millis();
  while (millis () < current+time) Thread.yield();
}

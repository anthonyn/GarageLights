import themidibus.*; //Import the library

MidiBus myBus; // The MidiBus

EffectFactory ef;
EffectType effectType;

OPC opc;

ArrayList<Effect> effects = new ArrayList<Effect>();

void setup() {
  size(126, 8);
  background(0);

  oscSetup();

  ef = new EffectFactory();

  MidiBus.list(); // List all available Midi devices on STDOUT. This will show each device's index and name.
  myBus = new MidiBus(this, 0, 1); // Create a new MidiBus using the device index to select the Midi input and output devices respectively.

  opc = new OPC(this, "10.0.0.30", 7890);

  //for (int i = 0; i < 8; i++) {
  //  opc.ledStrip(i, 126, width / 2, i, 3.3, 0, true);
  //}

  int idx = 0;
  for (int i = 0; i < 8; i ++) {
    for (int j = 0; j < 126; j++) {
      opc.led(idx,  j, i);
      idx++;
    }
  }
}

void draw() {
  background(0);
  colorMode(HSB);

  for ( int i = effects.size() - 1; i >= 0; i--) {
    effects.get(i).draw();
    if (!effects.get(i).checkAlive()) {
      effects.remove(i);
    }
  }
}

void noteOn(int channel, int pitch, int velocity) {
  // Receive a noteOn
  //println();
  //println("Note On:");
  //println("--------");
  //println("Channel:"+channel);
  //println("Pitch:"+pitch);
  //println("Velocity:"+velocity);

  if (pitch < 49 ) {
    effects.add(ef.makeEffect(channel, pitch, velocity, effectType.DRUMLINESEFFECT));
  } else if ( pitch == 64) {
    effects.add(ef.makeEffect(channel, pitch, velocity, effectType.STAR));
  } else if ( pitch == 77) {
    effects.add(ef.makeEffect(channel, pitch, velocity, effectType.BOUNCINGBALLEFFECT));
  } else {
    effects.add(ef.makeEffect(channel, pitch, velocity, effectType.DOT));
  }
}



void noteOff(int channel, int pitch, int velocity) {
  // Receive a noteOff
  println();
  println("Note Off:");
  println("--------");
  println("Channel:"+channel);
  println("Pitch:"+pitch);
  println("Velocity:"+velocity);
}

void controllerChange(int channel, int number, int value) {
  // Receive a controllerChange
  //println();
  //println("Controller Change:");
  //println("--------");
  //println("Channel:"+channel);
  //println("Number:"+number);
  //println("Value:"+value);
}

void delay(int time) {
  int current = millis();
  while (millis () < current+time) Thread.yield();
}

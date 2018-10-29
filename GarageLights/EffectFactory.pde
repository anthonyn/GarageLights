/*
  A Factory for effects
 */

public class EffectFactory {
  
  public Effect makeEffect(int channel, int pitch, int velocity, EffectType effectType  ) {

    switch (effectType) {
    case STAR:
      return new StarEffect( channel, pitch, velocity);
    case DOT:
      return new DotEffect(channel, pitch, velocity);
    default:
      return null;
    }


    //if ( pitch == 64){
    //  return new StarEffect( channel, pitch, velocity);
    //} else {
    //  return new DotEffect(channel, pitch, velocity);
    //}

    //removed for testing but shoudl go back, also should use an enum or sosmething for the effect names
    //  return null;
  }
}

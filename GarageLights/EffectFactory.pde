public class EffectFactory{
 
  
  
  public Effect makeEffect(int channel, int pitch, int velocity, String effectType ){
    
    if ( effectType.equalsIgnoreCase("Star")){
     return new StarEffect( channel,  pitch,  velocity);
      
    }
    
    return null;
  }
  
}

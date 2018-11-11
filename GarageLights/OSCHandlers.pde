import netP5.*;
import oscP5.*;

OscP5 oscP5tcpServer;

int oscInputPort = 5000;

void oscSetup(){
  oscP5tcpServer = new OscP5(this, oscInputPort, OscP5.UDP);
}

void oscEvent(OscMessage theMessage){
 
  println("Incoming message is ");
  
  theMessage.print();  
  
}

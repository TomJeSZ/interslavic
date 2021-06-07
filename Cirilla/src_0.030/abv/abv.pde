/**
Prototypowa aplikacja do zamiany liter 
2021 (c) Fasada Open Software Group PL
*/


import g4p_controls.*;

PFont myFont; 
GTextArea txaArea,txbArea;

public void setup(){
  println("=======================================================");
  println("Transliterator 'Cirilla' v.03, created by FASADA OSG PL");
  //println("=======================================================");
  size(640, 640);//, P2D);
  //myFont = createFont("Georgia", 32);
  //textFont(myFont);
  surface.setTitle("Cirilla v.030 - INTERSLAVIC");
  txaArea = new GTextArea(this, 10, 5, 640,215, 
                          G4P.SCROLLBARS_BOTH | 
                          G4P.SCROLLBARS_AUTOHIDE);
                          
  txbArea = new GTextArea(this, 10,210,640,415, 
                          G4P.SCROLLBARS_BOTH | 
                          G4P.SCROLLBARS_AUTOHIDE);                       
 /*           {
                //int eventCounter=0;
                public void mouseEvent(processing.event.MouseEvent event)
                {
                  //println("MouseEvent",eventCounter++);
                  super.mouseEvent(event);
                }
            }; */
            
  txaArea.setPromptText("Use Ctrl+V to paste here some Interslavic text in latin alphabet");
  txbArea.setPromptText("Select text (using mouse or Ctrl+A) and then use Ctrl+C to copy from here.\n"+
                         "Please send comments and suggestions to: https://t.me/fasadaOSG ");  txaArea.setOpaque(false);
  txbArea.setOpaque(false);
  frameRate(10);
}

void handleTextEvents(GEditableTextControl textcontrol, GEvent event) 
{
    //print("TextEvent:",event);
    if(event==event.CHANGED)
    { //Wykonaj transliteracje
      String out=textcontrol.getText()+"\n===>\n";
      //out=trBelorusCyrLat(textcontrol.getText(),out);
      //out=trUkrainianCyrLat(textcontrol.getText(),out);
      //out=trScientificCyrLat(textcontrol.getText(),out);
      out=crInterlavic(textcontrol.getText(),out);
      //println("--> "+textcontrol.getText()+'\n'+out);
      txbArea.setText(out);
    }
    
    if(event==event.ENTERED)//Wklejanie zaraz po ENTER powoduje błąd!
    {
      textcontrol.setText(textcontrol.getText()+".                   ");//To pomaga choć nie wiadomo na ile    
      //println();
    }
}

void draw(){
  background(0,245,255);//random(255));//??? noLoop() ???
  textAlign(LEFT,BOTTOM);
  text("2021©Fasada Open Software Group (https://github.com/TomJeSZ/interslavic/)",
  5,height-2);
}


 
//class MyGTextArea extends GTextArea
//{
//  public void mouseEvent(processing.event.MouseEvent event)
//  {
//    println("Pasted");
//    super.mouseEvent(event);
//  }
//}

/**
https://github.com/TomJeSZ/interslavic/tree/main/abc
*/

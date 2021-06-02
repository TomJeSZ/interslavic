/**
Prototypowa aplikacja do zamiany liter 
2021 (c) Fasada Open Software Group PL
*/


import g4p_controls.*;
 
//class MyGTextArea extends GTextArea
//{
//  public void mouseEvent(processing.event.MouseEvent event)
//  {
//    println("Pasted");
//    super.mouseEvent(event);
//  }
//}

 
GTextArea txaArea,txbArea;

public void setup(){
  println("=======================================================");
  println("Transliterator 'Latinka' v.02, created by FASADA OSG PL");
  //println("=======================================================");
  size(640, 640);//, P2D);
  surface.setTitle("Latinka v.02");
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
            
  txaArea.setPromptText("Use Ctrl+V to paste some Ukrainian text here");
  txbArea.setPromptText("Select text (using mouse or Ctrl+A) and then use Ctrl+C to copy from here");
  txaArea.setOpaque(false);
  txbArea.setOpaque(false);
  frameRate(10);
}

void handleTextEvents(GEditableTextControl textcontrol, GEvent event) 
{
    //print("TextEvent:",event);
    if(event==event.CHANGED)
    { //Wykonaj transliteracje
      String out=textcontrol.getText()+"\n===\n";
      //out=trBelorusCyrLat(textcontrol.getText(),out);
      out=trUkrainianCyrLat(textcontrol.getText(),out);
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
  background(250,245,0);//random(255));//??? noLoop() ???
}

/**
https://github.com/TomJeSZ/interslavic/tree/main/abc
*/

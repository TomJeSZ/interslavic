/**
Prototypowa aplikacja do zamiany liter 
2021 (c) Fasada Open Software PL
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

 
GTextArea txaArea;

public void setup(){
  size(640, 480);//, P2D);
  surface.setTitle("Paste-copy clipboard example");
  txaArea = new GTextArea(this, 5, 5, 640,480, 
                          G4P.SCROLLBARS_BOTH | 
                          G4P.SCROLLBARS_AUTOHIDE)
            {
                //int eventCounter=0;
                public void mouseEvent(processing.event.MouseEvent event)
                {
                  //println("MouseEvent",eventCounter++);
                  super.mouseEvent(event);
                }
            };
  txaArea.setPromptText("Use Ctrl+V to paste some text here,\nselect text and Ctrl+C to copy");
  txaArea.setOpaque(true);
}

void handleTextEvents(GEditableTextControl textcontrol, GEvent event) 
{
    //print("TextEvent:",event);
    if(event==event.CHANGED)
    { //Wykonaj transliteracje
      //...
      println("-->",textcontrol.getText());
    }
    
    if(event==event.ENTERED)//Wklejanie zaraz po ENTER powoduje błąd!
      textcontrol.setText(textcontrol.getText()+".                   ");//To pomaga choć nie wiadomo na ile
    
    println();
}

public void draw(){
  background(250,245,0);
  //txtArea.
}

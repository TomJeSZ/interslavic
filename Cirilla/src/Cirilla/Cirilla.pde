/**
Prototypowa aplikacja do zamiany liter 
2022 (c) Fasada Open Software Group PL
*/


import g4p_controls.*;

PFont myFont; 
GTextArea textarea1,textarea2;

public void setup(){
  println("==========================================================");
  println("Transliterator 'Cirilla' v.032, created by FASADA OSG PL");
//println("==========================================================");
  size(640, 800);//, P2D);
  frameRate(10);
  //createGUI();
  
  surface.setTitle("Cirilla v.032 - INTERSLAVIC extPL");
  textarea1 = new GTextArea(this, 10, 5, 640,215, 
                          G4P.SCROLLBARS_BOTH | 
                          G4P.SCROLLBARS_AUTOHIDE);
                          
  textarea2 = new GTextArea(this, 10,210,640,590, 
                          G4P.SCROLLBARS_BOTH | 
                          G4P.SCROLLBARS_AUTOHIDE);
  
  loadConfig("config.txt");
  configToFont();         
  my_font_changed();
  
  textarea1.setPromptText(configMsgs+"\nUse Ctrl+V to paste here some Interslavic text in latin alphabet");
  textarea2.setPromptText("Select text (using mouse or Ctrl+A) and then use Ctrl+C to copy from here.\n"+
                         "Please send comments and suggestions to: https://t.me/fasadaOSG ");  textarea1.setOpaque(false);
  textarea2.setOpaque(false);
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
      textarea2.setText(out);
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
  text("2022©Fasada Open Software Group (https://github.com/TomJeSZ/interslavic/)",
  5,height-2);
}

Font my_font_changed()//example
{
  Font selectedFont=new Font(font_name,font_face,font_size);
  //if(selectedFont.isValid())
      textarea1.setFont(selectedFont);
      textarea2.setFont(selectedFont);
  //else
  //    println("Failed creation of font:",font_name,font_face,font_size);
  return selectedFont;
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
https://github.com/TomJeSZ/interslavic/
*/

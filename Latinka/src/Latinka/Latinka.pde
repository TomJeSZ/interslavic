/** @file
 * Aplikacja do zamiany liter (transliteracji) z cyrylicy i głagolicy na latinkę
 * 2022 (c) Fasada Open Software Group PL
 * https://t.me/fasadaOSG
 * @authors: Tomasz Jerzy Szwed 
 *          & Wojciech Tomasz Borkowski
 * @date 2024-02-03 (last modification)
 */
import g4p_controls.*;

PFont     myFont; 
GTextArea textarea1,textarea2;
GDropList mydList;
GButton   button1;

public void setup()
{
  println("=========================================================");
  println("Transliterator 'Latinka' v.043, created by FASADA OSG PL ");
  println("=========================================================");
  size(640, 800);//, P2D);
  frameRate(10);
  createGUI();
  
  surface.setTitle("Latinka v.043 - MULTI");
  textarea1 = new GTextArea(this, 10, 5, 640, 215, 
                          G4P.SCROLLBARS_BOTH | 
                          G4P.SCROLLBARS_AUTOHIDE);
    
  mydList= new GDropList(this,
                 15,210,
                 550,90,
                 6, // listSize  
                 52 // buttonWidth
                 );                      
                 
  button1= new GButton(this, 575, 210, 52, 15, "clean!");
  
  textarea2 = new GTextArea(this, 10,230,640,575, 
                          G4P.SCROLLBARS_BOTH | 
                          G4P.SCROLLBARS_AUTOHIDE);                       
  
  loadConfig("config.txt");
  configToFont();
  my_font_changed();
    
  textarea1.setPromptText(configMsgs+"\nUse Ctrl+V to paste some Interslavic cyrylic text here");
  textarea2.setPromptText("Select text (using mouse or Ctrl+A) and then use Ctrl+C to copy from here.\n"+
                         "Please send comments and suggestions to: https://t.me/fasadaOSG ");
  
  textarea1.setOpaque(false);
  textarea2.setOpaque(false);
  mydList.setOpaque(false);
  button1.setOpaque(false);
  
  mydList.addItem("Interslavic cyrylic");
  mydList.addItem("Bielorusian cyrylic");
  mydList.addItem("Ukrainian cyrylic");
  mydList.addItem("Glagolitic");
  mydList.addItem("Cyrylic scientific");
  mydList.addItem("Ukrainian->Polish (exp.)");
}

void my_font_changed()
{
  //println(font_name,font_face,font_size);
  Font selectedFont=new Font(font_name,font_face,font_size);
  textarea1.setFont(selectedFont);
  textarea2.setFont(selectedFont);
}

void handleTextEvents(GEditableTextControl textcontrol, GEvent event) 
{
    //print("TextEvent:",event);
    if( textcontrol==textarea1
    && event==GEvent.CHANGED)
    { //Wykonaj transliteracje
      String out=textcontrol.getText()+"\n===>\n";
      switch(mydList.getSelectedIndex()){
      case 0:out=trInterlavic(textcontrol.getText(),out);break;
      case 1:out=trBelorus(textcontrol.getText(),out);break;
      case 2:out=trUkrainian(textcontrol.getText(),out);break;
      case 3:out=trGlagolitic(textcontrol.getText(),out);break;
      case 4:out=trScientific(textcontrol.getText(),out);break;
      case 5:out=trUkrPolExp(textcontrol.getText(),out);break;
      default: out="UNKNOWN TRANSLITERATION"; break;
      }
      //println("--> "+textcontrol.getText()+'\n'+out);
      textarea2.setText(out);
    }
    
    if(event==GEvent.ENTERED)//Wklejanie zaraz po ENTER powoduje błąd!
    {
      textcontrol.setText(textcontrol.getText()+".                   ");//To pomaga choć nie wiadomo na ile    
      //println();
    }
}

void handleButtonEvents(GButton button, GEvent event) 
{
   if(button == button1 && event == GEvent.CLICKED) 
   {
       println("CLEANING");
       //button1.setEnabled(false);
       textarea1.setText("");
   }
 }

void handleDropListEvents(GDropList list, GEvent event) 
{ 
  if(list==mydList)
  {
    //println("LIST");
    println(list.getSelectedIndex(),list.getSelectedText());
    textarea1.setPromptText("Use Ctrl+V to paste some "+list.getSelectedText()+" text here");
    //String tmp=txaArea.getText()+".";
    //txaArea.setText(tmp);
    textarea1.setText("");
  }
}

void draw(){
  background(250,245,0);//random(255));//??? noLoop() ???
  textAlign(LEFT,BOTTOM);
  text("2022©Fasada Open Software Group (https://github.com/TomJeSZ/interslavic/)",
  15,height-2);
}

/**
Project: https://github.com/TomJeSZ/interslavic/
The members of the Fasada Open Software Group 
permit the free use of this code for private, 
educational and research purposes,
but if you feel that it would be appropriate to 
repay somehow, please finance us 2 big coffees :-)
here https://www.paypal.com/paypalme/wborkowsk
..and the third one for Peter Lager, the author 
of G4P library. 
*/



//class MyGTextArea extends GTextArea
//{
//  public void mouseEvent(processing.event.MouseEvent event)
//  {
//    println("Pasted");
//    super.mouseEvent(event);
//  }
//}


 /*           {
                //int eventCounter=0;
                public void mouseEvent(processing.event.MouseEvent event)
                {
                  //println("MouseEvent",eventCounter++);
                  super.mouseEvent(event);
                }
            }; */

/**
Project: https://github.com/TomJeSZ/interslavic/
Channel: https://t.me/fasadaOSG
If you feel that it would be appropriate to repay somehow, please finance us two big coffees :-)
https://www.paypal.com/paypalme/wborkowsk
*/

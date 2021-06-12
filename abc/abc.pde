/**
Prototypowa aplikacja do zamiany liter 
2021 (c) Fasada Open Software Group PL
*/

import java.awt.Font;
import g4p_controls.*;

PFont     myFont; 
GTextArea txaArea,txbArea;
GDropList mydList;
GButton   button1;

public void setup()
{
  println("=======================================================");
  println("Transliterator 'Latinka' v.04, created by FASADA OSG PL");
  //println("=======================================================");
  size(640, 640);//, P2D);
  frameRate(10);
  createGUI();
  myFont = createFont("Dialog.plain", 12);
  textFont(myFont);
  //G4P.setDefaultFont("Dialog.plain", 0, 10);   

  surface.setTitle("Latinka v.04 - MULTI");
  txaArea = new GTextArea(this, 10, 5, 640, 215, 
                          G4P.SCROLLBARS_BOTH | 
                          G4P.SCROLLBARS_AUTOHIDE);
    
  mydList= new GDropList(this,
                 15,210,
                 550,90,
                 5, // listSize  
                 52 // buttonWidth
                 );                      
                 
  button1= new GButton(this, 575, 210, 52, 15, "xxxxx");
  
  txbArea = new GTextArea(this, 10,230,640,415, 
                          G4P.SCROLLBARS_BOTH | 
                          G4P.SCROLLBARS_AUTOHIDE);                       


  Font withGlagilicFont=new Font("Dialog.plain", Font.PLAIN,12);
  txaArea.setFont(withGlagilicFont); 
  txbArea.setFont(withGlagilicFont); 
  
  txaArea.setPromptText("Use Ctrl+V to paste some Interslavic cyrylic text here");
  txbArea.setPromptText("Select text (using mouse or Ctrl+A) and then use Ctrl+C to copy from here.\n"+
                         "Please send comments and suggestions to: https://t.me/fasadaOSG ");
  
  txaArea.setOpaque(false);
  txbArea.setOpaque(false);
  mydList.setOpaque(false);
  button1.setOpaque(false);
  
  mydList.addItem("Interslavic cyrylic");
  mydList.addItem("Bielorusian cyrylic");
  mydList.addItem("Ukrainian cyrylic");
  mydList.addItem("Glagolitic");
  mydList.addItem("Cyrylic scientific");
}

void handleTextEvents(GEditableTextControl textcontrol, GEvent event) 
{
    //print("TextEvent:",event);
    if( textcontrol==txaArea
    && event==GEvent.CHANGED)
    { //Wykonaj transliteracje
      String out=textcontrol.getText()+"\n===>\n";
      switch(mydList.getSelectedIndex()){
      case 0:out=trInterlavic(textcontrol.getText(),out);break;
      case 1:out=trBelorus(textcontrol.getText(),out);break;
      case 2:out=trUkrainian(textcontrol.getText(),out);break;
      case 3:out=trGlagolitic(textcontrol.getText(),out);break;
      case 4:out=trScientific(textcontrol.getText(),out);break;
      default: out="UNKNOWN TRANSLITERATION"; break;
      }
      //println("--> "+textcontrol.getText()+'\n'+out);
      txbArea.setText(out);
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
       txaArea.setText("");
   }
 }

void handleDropListEvents(GDropList list, GEvent event) 
{ 
  if(list==mydList)
  {
    //println("LIST");
    println(list.getSelectedIndex(),list.getSelectedText());
    txaArea.setPromptText("Use Ctrl+V to paste some "+list.getSelectedText()+" text here");
    //String tmp=txaArea.getText()+".";
    //txaArea.setText(tmp);
    txaArea.setText("");
  }
}

void draw(){
  background(250,245,0);//random(255));//??? noLoop() ???
  textAlign(LEFT,BOTTOM);
  text("2021©Fasada Open Software Group (https://github.com/TomJeSZ/interslavic/)",
  15,height-2);
}

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
https://github.com/TomJeSZ/interslavic/tree/main/abc
*/

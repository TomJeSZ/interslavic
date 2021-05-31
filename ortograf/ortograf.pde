/**
Fasada Open Software PL

http://pl.neoslavonic.org/lessons/1
http://tutorial.neoslavonic.org/lessons/1/glagolica.gif

Język nowosłowiański używa generalnie dwóch alfabetów: łacińskiego i cyrylicy. Ponadto ma także zapis dostępny w alfabecie ASCII  oraz alfabecie greckim. Możliwe jest także korzystanie dla własnej przyjemności, z pierwszego w historii słowiańskiego pisma: głagolicy.
POMOCNICZO --> https://interslavic-dictionary.com/
           --> http://steen.free.fr/interslavic/slovianto1.html
           --> http://steen.free.fr/interslavic/orthography.html
           --> http://steen.free.fr/interslavic/ms-pl.html


abažur m. abażur

abdikacija f. abdykacja

abdikovati v.intr. ipf. abdykować

abeceda f. alfabet, abecadło
...

Сѫгласкы:

Лат.: b v w g d z j c k q l m n p r s t f h x

Влк.: б в г д ђ ж з ј к л љ м н њ п р с т ћ ф х ц џ ч ш

Х. кир.: б в г д ꙉ ж з (ꙁ ꙃ) ѕ (ꙅ) к л м н п р с т ф х ц (ꙡ) ч ш щ ѳ ѯ ѱ

Р. кир.: б в г д ж з й к л м н п р с т ф (ѳ) х ц ч ш щ

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
                int eventCounter=0;
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
      println("-->",textcontrol.getText());
    
    if(event==event.ENTERED)//Wklejanie zaraz po ENTER powoduje błąd!
      textcontrol.setText(textcontrol.getText()+".");
    
    println();
}

public void draw(){
  background(250,245,0);
  //txtArea.
}

/* =========================================================
 * ====                   WARNING                        ===
 * =========================================================
 * The code in this tab has been generated from the GUI form
 * designer and care should be taken when editing this file.
 * Only add/edit code inside the event handlers i.e. only
 * use lines between the matching comment tags. e.g.

 void myBtnEvents(GButton button) { //_CODE_:button1:12356:
     // It is safe to enter your event code here  
 } //_CODE_:button1:12356:
 
 * Do not rename this tab!
 * =========================================================
 */

public void buttonOK_click1(GButton source, GEvent event) { //_CODE_:buttonOK:293005:
  println("buttonOK - GButton >> GEvent." + event + " @ " + millis());
} //_CODE_:buttonOK:293005:

public void dropList_click1(GDropList source, GEvent event) { //_CODE_:dropListOfFonts:668570:
  println("dropListOfFonts - GDropList >> GEvent." + event + " @ " + millis());
} //_CODE_:dropListOfFonts:668570:

public void textarea1_change1(GTextArea source, GEvent event) { //_CODE_:textarea1:951420:
  println("textarea1 - GTextArea >> GEvent." + event + " @ " + millis());
} //_CODE_:textarea1:951420:



// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setCursor(ARROW);
  surface.setTitle("Select proper font");
  buttonOK = new GButton(this, 412, 19, 80, 23);
  buttonOK.setText("OK");
  buttonOK.addEventHandler(this, "buttonOK_click1");
  dropListOfFonts = new GDropList(this, 4, 18, 300, 264, 10, 30);
  dropListOfFonts.setItems(loadStrings("list_668570"), 0);
  dropListOfFonts.addEventHandler(this, "dropList_click1");
  textarea1 = new GTextArea(this, 4, 49, 489, 445, G4P.SCROLLBARS_NONE);
  textarea1.setText("abcdeefghijklmnoprstvxyz");
  textarea1.setOpaque(true);
  textarea1.addEventHandler(this, "textarea1_change1");
}

// Variable declarations 
// autogenerated do not edit
GButton buttonOK; 
GDropList dropListOfFonts; 
GTextArea textarea1; 

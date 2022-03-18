/** Font selection dialog version 0.1
2022 (c) Fasada Open Software Group PL
See:
https://discourse.processing.org/t/g4p-font-for-textfield/12732/2
*/

import java.awt.Font;
import g4p_controls.*;

PFont     myFont;
String[]  fontList;

String    textToView=""
+"EN * It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.\n"
+"PL * Ogólnie znana teza głosi, iż użytkownika może rozpraszać zrozumiała zawartość strony, kiedy ten chce zobaczyć sam jej wygląd.\n"
+"CZ * Je obecně známou věcí, že člověk bývá při zkoumání grafického návrhu rozptylován okolním textem, pokud mu dává nějaký smysl.\n"
+"IN * Ⰵ ⰴⰰⰲⱀⱏⰺ ⱇⰰⰽⱅ ⰶⰵ ⱍⰻⱅⰰⰵⰿⱏⰺ ⱅⰵⰽⱄⱅ ⰱⱆⰴⰵ ⱂⱆⱅⰰⱅⰻ ⱅⱁⰳⱁ ⰽⱅⱁ ⱍⰻⱅⰰⰵ ⱅⰵⰿ ⱔⰽ ⰵ ⱀⰰⱂⰻⱄⰰⱀ\n"
//GLAGOLITIC: Je davny fakt že čitajemy tekst bude putati togo kto čitaje tem jak je napisan.
//By Tu Sueño ♡
+"GR * Είναι πλέον κοινά παραδεκτό ότι ένας αναγνώστης αποσπάται από το περιεχόμενο που διαβάζει, όταν εξετάζει τη διαμόρφωση μίας σελίδας.\n"
+"UA * Вже давно відомо, що читабельний зміст буде заважати зосередитись людині, яка оцінює композицію сторінки.\n"
+"XS * Позната је чињеница да ће читалац бити спутан правим читљивим текстом на страници када гледа њен распоред.\n"
+"GE * ცნობილი ფაქტია, რომ გვერდის წაკითხვად შიგთავსს შეუძლია მკითხველის ყურადღება მიიზიდოს და დიზაინის აღქმაში ხელი შეუშალოს.\n" //Gruzja
+"IL * Lorem Ipsum הוא פשוט טקסט גולמי של תעשיית ההדפסה וההקלדה. Lorem Ipsum היה טקסט סטנדרטי עוד במאה ה-16,\n"
+"ไทย * มีหลักฐานที่เป็นข้อเท็จจริงยืนยันมานานแล้ว ว่าเนื้อหาที่อ่านรู้เรื่องนั้นจะไปกวนสมาธิของคนอ่านให้เขวไปจากส่วนที้เป็น Layout เรานำ \n"
+"AR * لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر\n"
+"\n2021 (c) Fasada Open Software Group PL\nhttps://github.com/TomJeSZ/interslavic/\n"
+"GL * Ⰰⰰ  Ⰰ։ ⰰ։  Ⱘⱘ  Ⰱⰱ  Ⱌⱌ  ⰜⰠ ⱌⱐ  ⰝⰠ ⱍⱐ  Ⱍⱍ  Ⰴⰴ  ⰄⰠ ⰴⱐ  Ⰷⰷ  ⰇⰠ ⰷⱐ  Ⰼⰼ  ⰄⰆ ⰴⰶ  Ⰵⰵ  Ⱔⱔ  Ⱑⱑ  Ⰵ։ ⰵ։  Ⱏⱏ  Ⱇⱇ  Ⰳⰳ  Ⱒⱒ  Ⱈⱈ  Ⰻⰻ  Ⰻⰻ  Ⰹⰹ  Ⱝⱝ  Ⱙⱙ  Ⱗⱗ  Ⱖⱖ  Ⱓⱓ  Ⰽⰽ  Ⰾⰾ  ⰎⰠ ⰾⱐ  Ⱛ, ⰖⰟ ⱛⰺ, ⱆⱏ  Ⰿ, Ⱞ ⰿ, ⱞ  Ⱀ ⱀ  ⱀⱐ  ⱁ  Ⱆ ⱆ  Ⱁ։  ⱁ։  Ⱂ ⱂ  Ⱃ ⱃ  ⰓⰆⰠ ⱃⰶⱐ  Ⰶ/Ⱎ ⰶ/ⱎ  Ⱄ ⱄ  Ⱄ ⱄ  ⰔⰠ ⱄⱐ  Ⱎ ⱎ  Ⱋ ⱋ  Ⱅ ⱅ  ⰕⰠ ⱅⱐ  Ⱆ ⱆ  Ⱆ։ ⱆ։  Ⰲ ⰲ  ⰟⰉ ⱏⰹ  ⰠⰉ ⱐⰹ  Ⰸ ⰸ  ⰈⰠ ⰸⱐ  ⰆⰠ ⰶⱐ  Ⱐ, Ⰹ ⱐ, ⰹ  Ⱏ, Ⰺ ⱏ, ⰺ  Ⰶ ⰶ  Ⱕ ⱕ  ։\n"
+"\nYou can use this software freely for private, educational and research purposes,"
+"but if you feel that it would be appropriate to repay somehow, please finance two big coffees for us :-)\n"
+"https://www.paypal.com/paypalme/wborkowsk\n"
;
// Variable declarations 
// autogenerated do not edit
// GButton buttonOK; 
// GDropList dropListOfFonts; 
// GTextArea textarea1; 
// GCustomSlider fsize_slider; 

/// Load user defined text
void loadtextToView()
{
  String[] data=loadStrings("../textToView.txt");
  if(data==null || data.length==0)
    println("Default text sample will be used");
  else
  {
    String old=textToView;
    textToView="";
    for(String s:data)
      textToView+=s+'\n';
    textToView+=old;  
  }
}

void setup() 
{                                                                                                                        
  println("=======================================================");
  println("   Font selector, created by FASADA OSG PL\n   https://github.com/TomJeSZ/interslavic/");
  size(500,500);
  createGUI();
  
  loadtextToView();
  textarea1.setText(textToView);
  
  println("\nData from config file:\n");
  loadConfig("../config.txt");
  println();
  
  configToFont();//Load font data from config dictionary
  fontList = PFont.list();
  dropListOfFonts.setItems(fontList,font_index);
  dropListOfFonts.setSelected(font_index);
  String curr_name=dropListOfFonts.getSelectedText();
  println("Currently selected font is [",dropListOfFonts.getSelectedIndex(),"]",curr_name);
  
  if(font_name.equals(curr_name)==true)
  {
    println("Loaded configuration seems to be valid");
    fsize_slider.setValue(font_size);
    
    double realsize=my_font_changed().getSize();
    if(realsize!=font_size)//because of size
      println("But size is",realsize);
  }
  else
  {
    println("Invalid configuration! Select proper font and click OK");
  }
}

void draw()
{
  //EMPTY ? BUT MUST BE!!!
  background(0,200,200);
}

/*
int i=0;
void old_draw()
{
  background(0);
  println(i,fontList[i]);
  myFont = createFont(fontList[i], 20);
  textFont(myFont);
  textAlign(CENTER,TOP);fill(255,0,0);
  text(fontList[i], width/2, 0);
  textAlign(CENTER, CENTER);fill(255);
  text("!@#$%\nABCĆDEĘ\nabcćdeę\nГледај фајлы скупины (Њ,ѣ)\nⰐⰵ ⱅⰻⰿ ⰸⰰ ⱎⱅⱁ ⰰⰾⰵ ⰿⱀⰵ ⱂⱁⰴⱁⰱⰰⰵ\n",
        width/2, height/2);
  i=(i+1)%fontList.length;
}
*/

/**
Project: https://github.com/TomJeSZ/interslavic/

Tip:     You can use this software freely for private, educational and research purposes, 
         but if you feel that it would be appropriate to repay somehow, please finance us 
         big coffees :-)
         https://www.paypal.com/paypalme/wborkowsk
*/

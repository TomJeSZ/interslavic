/**
Prototype class for cyrylic<->latin transliteration 
2021 (c) Fasada Open Software Group PL

Version 0.31;

crInterlavic - standard transliteration from latin interslavic to cyrylic interslavic with some extensions
trBelorus - transliteration from Belorusian Cyrillic into National 2007 standard
trInterlavic - standard transliteration from cirilic interslavic to basic latin interslavic with some extensions
trScientific - transliteration from  Cyrillic ISO 9 (extended for historical letters)
trUkrainian - transliteration from  Cyrillic into GOST 1986, but 'И' --> 'Y'

https://github.com/TomJeSZ/interslavic/
*/

public class abc {

public String crInterlavic(String inp,String out)
//Standard transliteration from latin interslavic to cyrylic interslavic with some extensions
{
  int big=0;
    
  for(int p=0;p<inp.length();p++)
  {
    char c=inp.charAt(p);
    switch( c ){
    //Latin                               -> Cyrillic                       
    case 'A':big=1;case 'a':out+=(big > 0 ?'А':'а');big=0;break;//    А@а  
    case 'B':big=1;case 'b':out+=(big > 0 ?'Б':'б');big=0;break;//    Б@б
    case 'C':big=1;case 'c':if(inp.charAt(p+1)=='Z' || inp.charAt(p+1)=='z'
                            || inp.charAt(p+1)=='X' || inp.charAt(p+1)=='x')//(CZ,CX)
                            {out+=(big > 0 ?'Ч':'ч');p++;big=0;break;}//    Ч@ч
                            else
                            {out+=(big > 0 ?'Ц':'ц');big=0;break;}//  Ц@ц
    case 'Č':big=1;case 'č':out+=(big > 0 ?'Ч':'ч');big=0;break;  //  Ч@ч
    case 'D':big=1;case 'd':out+=(big > 0 ?'Д':'д');big=0;break;  //  Д@д
    //case 'DŽ  ДЖ' --> AUTO
    case 'E':big=1;case 'e':out+=(big > 0 ?'Е':'е');big=0;break;//  Е@е
    //case E -> Є@є ?
    case 'Ě':big=1;case 'ě':out+=(big > 0 ?'Є':'є');big=0;break;//  Є@є
    case 'F':big=1;case 'f':out+=(big > 0 ?'Ф':'ф');big=0;break;//  Ф@ф
    case 'G':big=1;case 'g':out+=(big > 0 ?'Г':'г');big=0;break;//  Г@г
    case 'H':big=1;case 'h':out+=(big > 0 ?'Х':'х');big=0;break;//  Х@х
    case 'I':big=1;case 'i':out+=(big > 0 ?'И':'и');big=0;break;//  И@и
    //I -> Ы@ы ?
//    case 'J':big=1;case 'j':out+=(big > 0 ?'Й':'й');big=0;break;//  Й@й
    case 'J':big=1;case 'j':out+=(big > 0 ?'Ј':'ј');big=0;break;//  Й@й : Ј (Й)  J  J  [j]  ј (й) -> 'Ꙇ' to jest male od "Ј"?
    case 'K':big=1;case 'k':out+=(big > 0 ?'К':'к');big=0;break;//  К@к
    case 'L':big=1;case 'l':if(inp.charAt(p+1)=='J' || inp.charAt(p+1)=='j')//'LJ' & 'lj':
                            {out+=(big > 0 ?'Љ':'љ');p++;big=0;break;}//  Љ@љ
                            else
                            {out+=(big > 0 ?'Л':'л');big=0;break;}//  Л@л
    case 'M':big=1;case 'm':out+=(big > 0 ?'М':'м');big=0;break;//  М@м
    case 'N':big=1;case 'n':if(inp.charAt(p+1)=='J' || inp.charAt(p+1)=='j')//'NJ' & 'nj':
                            {out+=(big > 0 ?'Њ':'њ');p++;big=0;break;}//  Њ@њ
                            else
                            {out+=(big > 0 ?'Н':'н');big=0;break;}//  Н@н
    case 'O':big=1;case 'o':out+=(big > 0 ?'О':'о');big=0;break;//  О@о
    case 'P':big=1;case 'p':out+=(big > 0 ?'П':'п');big=0;break;//  П@п
    case 'R':big=1;case 'r':out+=(big > 0 ?'Р':'р');big=0;break;//  Р@р
    case 'S':big=1;case 's':if(inp.charAt(p+1)=='Z' || inp.charAt(p+1)=='z'
                            || inp.charAt(p+1)=='X' || inp.charAt(p+1)=='x')
                            {out+=(big > 0 ?'Ш':'ш');p++;big=0;break;}// (SZ,SX)
                            else
                            {out+=(big > 0 ?'С':'с');big=0;break;}//  С@с
    case 'Š':big=1;case 'š':out+=(big > 0 ?'Ш':'ш');big=0;break;  //  Ш@ш
    case 'T':big=1;case 't':out+=(big > 0 ?'Т':'т');big=0;break;  //  Т@т
    case 'U':big=1;case 'u':out+=(big > 0 ?'У':'у');big=0;break;  //  У@у
    case 'V':big=1;case 'v':out+=(big > 0 ?'В':'в');big=0;break;  //  В@в
    case 'Y':big=1;case 'y':out+=(big > 0 ?'Ы':'ы');big=0;break;  //  Ы@ы
    case 'Z':big=1;case 'z':if(inp.charAt(p+1)=='Z' || inp.charAt(p+1)=='z'
                            || inp.charAt(p+1)=='X' || inp.charAt(p+1)=='x')
                            {out+=(big > 0 ?'Ж':'ж');p++;big=0;break;}    //ZS,ZX
                            else
                            {out+=(big > 0 ?'З':'з');big=0;break;}  //  З@з
    case 'Ż':big=1;
    case 'Ž':big=1;
    case 'ż':
    case 'ž':out+=(big > 0 ?'Ж':'ж');big=0;break;//  Ж@ж
    //Extensions
    case 'Ć':big=1;case 'ć':out+=(big > 0 ?"ЦЬ":"ць");big=0;break;//  Ц@ц Ь@ь
    case 'Ś':big=1;case 'ś':out+=(big > 0 ?"СЬ":"сь");big=0;break;//  С@с Ь@ь
    case 'Ź':big=1;case 'ź':out+=(big > 0 ?"ЗЬ":"зь");big=0;break;//  З@з Ь@ь
    case 'Ń':big=1;case 'ń':out+=(big > 0 ?'Њ':'њ');big=0;break;//  Њ@њ
//case 'Ę':big=1;case 'ę':out+=(big > 0 ?"Eн":"eн");big=0;break;// ?
    case 'Ę':big=1;case 'ę':out+=(big > 0 ?"E":"e");big=0;break;// ? Ѧ ѧ ?
//case 'Ą':big=1;case 'ą':out+=(big > 0 ?"Oм":"oм");big=0;break;// ?'OМ':'oм'
    case 'Ą':big=1;case 'ą':out+=(big > 0 ?"O":"o");big=0;break;// ? Ѫ ѫ ?
    case 'Ł':big=1;case 'ł':out+=(big > 0 ?'Л':'л');big=0;break;//
    case 'W':big=1;case 'w':out+=(big > 0 ?'В':'в');big=0;break;//
    //...
    default:
    out+=c;break;
    }//end switch
  }
  
  return out+"\n[Interslavic std.ext.]";
}

public String trBelorus(String inp,String out)
//transliteration from Cyrillic into National 2007 standard
{ 
  int big=0;

  for(int p=0;p<inp.length();p++)
  {
    char c=inp.charAt(p);
    switch( c ){
    //case '':out+=(big > 0 ?'':'');big=0;break;  
    case 'А':big=1;    case 'а':out+=(big > 0 ?'A':'a');big=0;break;  //...
    case 'Б':big=1;    case 'б':out+=(big > 0 ?'B':'b');big=0;break;  // b
    case 'В':big=1;    case 'в':out+=(big > 0 ?'V':'v');big=0;break;  // v
    case 'Г':big=1;    case 'г':out+=(big > 0 ?'H':'h');big=0;break;  // h?
    case 'Ґ':big=1;    case 'ґ':out+=(big > 0 ?"G":"g");big=0;break;  // ?
    case 'Д':big=1;    case 'д':out+=(big > 0 ?'D':'d');big=0;break;  //  d
    //case 'Дж':    //case 'дж  dž
    //case 'Дз':    //case 'дз  dz
    case 'Е':big=1;    case 'е':out+=(big > 0 ?"Je":"je");big=0;break;  //  je, ie
    case 'Ё':big=1;    case 'ё':out+=(big > 0 ?"Jo":"jo");big=0;break;  //  jo, io
    case 'Ж':big=1;    case 'ж':out+=(big > 0 ?'Ž':'ž');big=0;break;  //  ž?
    case 'З':big=1;    case 'з':
             if(inp.charAt(p+1)=='ь' || inp.charAt(p+1)=='Ь') //case 'зь'
             {
               out+=(big > 0 ?'Ź':'ź');p++;big=0;break;  //  ź
             }
             else
             {
               out+=(big > 0 ?'Z':'z');big=0;break;  //  z
             }
             
    case 'І':big=1;    case 'і':out+=(big > 0 ?'I':'i');big=0;break;  //  i
    case 'Й':big=1;    case 'й':out+=(big > 0 ?'J':'j');big=0;break;  //  j
    case 'К':big=1;    case 'к':out+=(big > 0 ?'K':'k');big=0;break;  //  k
    case 'Л':big=1;    case 'л':
             if(inp.charAt(p+1)=='ь' || inp.charAt(p+1)=='Ь')//case 'ль'://  ĺ
             {
               out+=(big > 0 ?'Ĺ':'ĺ');p++;big=0;break;  //  ĺ ? Ľ
             }
             else
             {
               out+=(big > 0 ?'L':'l');big=0;break;  //  l
             } 
    case 'М':big=1;    case 'м':out+=(big > 0 ?'M':'m');big=0;break;  //  m
    case 'Н':big=1;    case 'н':
             if(inp.charAt(p+1)=='ь' || inp.charAt(p+1)=='Ь')    //case 'нь'
             {
               out+=(big > 0 ?'Ń':'ń');p++;big=0;break;  //  ń
             }
             else
             {
               out+=(big > 0 ?'N':'n');big=0;break;  //  n
             }
             
    case 'О':big=1;    case 'о':out+=(big > 0 ?'O':'o');big=0;break;  //  o
    case 'П':big=1;    case 'п':out+=(big > 0 ?'P':'p');big=0;break;  //  p
    case 'Р':big=1;    case 'р':out+=(big > 0 ?'R':'r');big=0;break;  //  r
    case 'С':big=1;    case 'с':
             if(inp.charAt(p+1)=='ь' || inp.charAt(p+1)=='Ь')//case 'сь':
             {
               out+=(big > 0 ?'Ś':'ś');p++;big=0;break;  //  ś
             }
             else
             {
               out+=(big > 0 ?'S':'s');big=0;break;  //  s
             }
             
    case 'Т':big=1;    case 'т':
             if(inp.charAt(p+1)=='ь' || inp.charAt(p+1)=='Ь')//case 'ть':
             {
               out+=(big > 0 ?"Ť":"ť");p++;big=0;break;  //  ť 
             }
             else
             {
               out+=(big > 0 ?'T':'t');big=0;break;  //  t
             }
            
    //case 'Тс':
    //case 'тс': ???  
    case 'У':big=1;    case 'у':out+=(big > 0 ?'U':'u');big=0;break;  //  u
    case 'Ў':big=1;    case 'ў':out+=(big > 0 ?'Ŭ':'ŭ');big=0;break;  //  ŭ 
    case 'Ф':big=1;    case 'ф':out+=(big > 0 ?'F':'f');big=0;break;  //  f
    case 'Х':big=1;    case 'х':out+=(big > 0 ?"Ch":"ch");big=0;break;//  ch
    case 'Ц':big=1;    case 'ц':
             if(inp.charAt(p+1)=='ь' || inp.charAt(p+1)=='Ь')//case 'ць'
             {
               out+=(big > 0 ?'Ć':'ć');p++;big=0;break;  //  ć
             }
             else
             {
               out+=(big > 0 ?'C':'c');big=0;break;  //  c
             }
             
    case 'Ч':big=1;    case 'ч':out+=(big > 0 ?'Č':'č');big=0;break;  //  č 
    case 'Ш':big=1;    case 'ш':out+=(big > 0 ?'Š':'š');big=0;break;  //  š
    
    case 'Ы':big=1;    case 'ы':out+=(big > 0 ?'Y':'y');big=0;break;  //  y
    
    case 'Э':big=1;    case 'э':out+=(big > 0 ?'E':'e');big=0;break;  //  e
    case 'Ю':big=1;    case 'ю':out+=(big > 0 ?"Ju":"ju");big=0;break;  //  ju, iu
    case 'Я':big=1;    case 'я':out+=(big > 0 ?"Ja":"ja");big=0;break;  //  ja, ia
    
    //Missed softenings 
    case 'Ь': big=1;    case 'ь': //println(""+inp.charAt(p-1)+c+'!');
              out+=(big > 0 ?'ʹ':'ʹ');big=0;break;  //  combining acute
    case 'ʼ': //println(""+inp.charAt(p-1)+c+'?');
              out+='ʹ';big=0;break;  //  - ??? 
    case 'Ъ':          case 'ъ':break;
        
    //Historical letters  
    case 'И':big=1;    case 'и':out+=(big > 0 ?'I':'i');big=0;break;  // 'i' rosyjskie? 
    case 'Щ':big=1;    case 'щ':out+=(big > 0 ?"Šč":"šč");big=0;break; //'szcz' rosyjskie?
    case 'Ѣ':big=1;    case 'ѣ':out+=(big > 0 ?'E':'ê');big=0;break;//ê stare "je"?

    default://All other characters 
      out+=c;big=0;break;
    }//end switch
  }
  
  return out+"\n[National 2007]";
}

public String trInterlavic(String inp,String out)
//Standard transliteration from cirilic interslavic to basic latin interslavic with some extensions
{
  int big=0;
    
  for(int p=0;p<inp.length();p++)
  {
    char c=inp.charAt(p);
    switch( c ){
    //Cyrillic                               -> Latin                       Etymological
    case 'А':big=1;     case 'а':out+=(big > 0 ?'A':'a');big=0;break;//  A    A
    //case '':out+=(big > 0 ?'':'');big=0;break;//                            Å
    case 'Б':big=1;     case 'б':out+=(big > 0 ?'B':'b');big=0;break;//  B    B
    case 'Ц':big=1;     case 'ц':out+=(big > 0 ?'C':'c');big=0;break;//  C    C
    case 'Ч':big=1;     case 'ч':out+=(big > 0 ?'Č':'č');big=0;break;//  Č (CZ, CX)  Ć
    //case '':out+=(big > 0 ?'':'');big=0;break;//    Č
    case 'Д':big=1;     case 'д':out+=(big > 0 ?'D':'d');big=0;break;//  D    D
    //case '':out+=(big > 0 ?'':'');big=0;break;//    D́ (Ď)
    //case 'ДЖ':big=1;    case 'дж':out+=(big > 0 ?'':'');big=0;break;// DŽ   Đ
    //case '':out+=(big > 0 ?'':'');big=0;break;//    DŽ
    case 'Е':big=1;     case 'е':out+=(big > 0 ?'E':'e');big=0;break;//  E    E
    
    //case '':out+=(big > 0 ?'':'');big=0;break;//    Ė (È)
    //case '':out+=(big > 0 ?'':'');big=0;break;//    Ę
    case 'Є':big=1;     case 'є':out+=(big > 0 ?'Ě':'ě');big=0;break;//  Ě (E)  Ě
    case 'Ф':big=1;     case 'ф':out+=(big > 0 ?'F':'f');big=0;break;//  F      F
    case 'Г':big=1;     case 'г':out+=(big > 0 ?'G':'g');big=0;break;//  G      G
    case 'Х':big=1;     case 'х':out+=(big > 0 ?'H':'h');big=0;break;//  H      H
    case 'И':big=1;     case 'и':out+=(big > 0 ?'I':'i');big=0;break;//  I      I
    case 'Й':big=1;     case 'й':out+=(big > 0 ?'J':'j');big=0;break;//  Ј'ј'   J
    case 'К':big=1;     case 'к':out+=(big > 0 ?'K':'k');big=0;break;//  K      K
    
    case 'Л':big=1;     case 'л':if(inp.charAt(p+1)=='ь' || inp.charAt(p+1)=='Ь')
                                 {
                                   out+=(big > 0 ?"Lj":"lj");p++;big=0;break; 
                                 }
                                 else
                                 {
                                   out+=(big > 0 ?'L':'l');big=0;break;//  L      L
                                 }
    case 'Љ':big=1;     case 'љ':out+=(big > 0 ?"Lj":"lj");big=0;break;//  LJ   LJ
    //case '':out+=(big > 0 ?'':'');big=0;break;//    Ĺ (Ľ)
    
    case 'М':big=1;     case 'м':out+=(big > 0 ?'M':'m');big=0;break;//  M      M
    
    case 'Н':big=1;     case 'н':if(inp.charAt(p+1)=='ь' || inp.charAt(p+1)=='Ь')
                                 {
                                   out+=(big > 0 ?"Nj":"nj");p++;big=0;break; 
                                 }
                                 else
                                 {
                                   out+=(big > 0 ?'N':'n');big=0;break;//  N      N
                                 }
    case 'Њ':big=1;     case 'њ':out+=(big > 0 ?"Nj":"nj");big=0;break; 
    //case '':out+=(big > 0 ?'':'');big=0;break;//    Ń
    
    case 'О':big=1;     case 'о':out+=(big > 0 ?'O':'o');big=0;break;//  O      O
    //case '':out+=(big > 0 ?'':'');big=0;break;//    Ȯ (Ò)
    case 'П':big=1;     case 'п':out+=(big > 0 ?'P':'p');big=0;break;//  P      P
    case 'Р':big=1;     case 'р':out+=(big > 0 ?'R':'r');big=0;break;//  R      R
    //case '':out+=(big > 0 ?'':'');big=0;break;//    Ŕ
    case 'С':big=1;     case 'с':out+=(big > 0 ?'S':'s');big=0;break;//  S      S
    //case '':out+=(big > 0 ?'':'');big=0;break;//    Ś
    case 'Ш':big=1;     case 'ш':out+=(big > 0 ?'Š':'š');big=0;break;//  Š (SZ, SX)  Š
    case 'Т':big=1;     case 'т':out+=(big > 0 ?'T':'t');big=0;break;//  T      T
    //case '':out+=(big > 0 ?'':'');big=0;break;//    T́ (Ť)
    case 'У':big=1;     case 'у':out+=(big > 0 ?'U':'u');big=0;break;//  U      U
    //case '':out+=(big > 0 ?'':'');big=0;break;//    Ų
    case 'В':big=1;     case 'в':out+=(big > 0 ?'V':'v');big=0;break;//  V      V (W - pl)
    case 'Ы':big=1;     case 'ы':out+=(big > 0 ?'Y':'y');big=0;break;//  Y(И)   (I)  Y
    case 'З':big=1;     case 'з':out+=(big > 0 ?'Z':'z');big=0;break;//  Z      Z
    //case '':out+=(big > 0 ?'':'');big=0;break;//    Ź
    case 'Ж':big=1;     case 'ж':out+=(big > 0 ?'Ž':'ž');big=0;break;//  Ž (Ż, ZS, ZX)  Ž
    case 'Ь':big=1;     case 'ь':break;//out+=(big > 0 ?'':'');big=0;break;//  ʹ  ʹ
    case 'Ъ':           case 'ъ':break;
    //Extensions:
    case 'Џ':big=1;     case 'џ': out+=(big > 0 ?"Ď":"ď");big=0;break;  // D z ptaszkiem?
    case 'Щ':big=1;     case 'щ':out+=(big > 0 ?"Šč":"šč");big=0;break; //'szcz' rosyjskie?
    case 'Ћ':big=1;     case 'ћ':out+=(big > 0 ?"Ćx":"ćx");big=0;break; // Ćć - miękkie 'cz'?
    case 'Ђ':big=1;     case 'ђ':out+=(big > 0 ?"Dž":"dž");big=0;break; //  ђ – dž
    case 'Ѣ':big=1;     case 'ѣ':out+=(big > 0 ?'Ě':'ě');big=0;break;   //
    case 'Ѧ':big=1;     case 'ѧ':out+=(big > 0 ?"Ę":"ę");big=0;break;   //  Ę    ę
    case 'Я':big=1;     case 'я':out+=(big > 0 ?"Ja":"ja");big=0;break; //  ja   ia
    case 'Ю':big=1;     case 'ю':out+=(big > 0 ?"Ju":"ju");big=0;break; //  ju   iu
    case 'I':big=1;     case 'і':out+=(big > 0 ?"I":"i");big=0;break;   //   Ì   ì
    case 'Ї':big=1;     case 'ї':out+=(big > 0 ?"I":"i");big=0;break;   //   Ï   ï
    case 'Ѥ':big=1;     case 'ѥ':out+=(big > 0 ?"JE":"je");big=0;break; //   JE  je
    case 'Ꙗ':big=1;     case 'ꙗ':out+=(big > 0 ?"JA":"ja");big=0;break; //   JA  ja
    //...
    default:
    out+=c;break;
    }//end switch
  }
  
  return out+"\n[Interslavic std.ext.]";
}

public String trScientific(String inp,String out)
//transliteration from  Cyrillic ISO 9 (extended for historical letters)
{
  int big=0;
  
  for(int p=0;p<inp.length();p++)
  {
    char c=inp.charAt(p);
    switch( c ){
    case 'А':big=1;     case 'а': out+=(big > 0 ?"A":"a");big=0;break;//   A  a
    case 'Б':big=1;     case 'б': out+=(big > 0 ?"B":"b");big=0;break;//   B  b
    case 'В':big=1;     case 'в': out+=(big > 0 ?"V":"v");big=0;break;//   V  v
    case 'Г':big=1;     case 'г': out+=(big > 0 ?"G":"g");big=0;break;//   G  g
    //case 'Ґ':big=1;     case 'ґ': out+=(big > 0 ?"G̀ ":"g̀");big=0;break;//   G̀   g̀
    case 'Ґ':big=1;     case 'ґ': out+=(big > 0 ?"Ġ":"ġ");big=0;break;
    case 'Д':big=1;     case 'д': out+=(big > 0 ?"D":"d");big=0;break;//   D  d
    case 'Ѓ':big=1;     case 'ѓ': out+=(big > 0 ?"Ǵ":"ǵ");big=0;break;//   Ǵ  ǵ
    case 'Ђ':big=1;     case 'ђ': out+=(big > 0 ?"Đ":"đ");big=0;break;//   Đ  đ
    case 'Е':big=1;     case 'е': out+=(big > 0 ?"E":"e");big=0;break;//   E  e
    case 'Ё':big=1;     case 'ё': out+=(big > 0 ?"Ë":"ë");big=0;break;//   Ë  ë
    case 'Є':big=1;     case 'є': out+=(big > 0 ?"Ê":"ê");big=0;break;//   Ê  ê
    case 'Ж':big=1;     case 'ж': out+=(big > 0 ?"Ž":"ž");big=0;break;//   Ž  ž
    case 'З':big=1;     case 'з': out+=(big > 0 ?"Z":"z");big=0;break;//   Z  z
    case 'Ѕ':big=1;     case 'ѕ': out+=(big > 0 ?"Ẑ":"ẑ");big=0;break;//   Ẑ  ẑ
    case 'И':big=1;     case 'и': out+=(big > 0 ?"I":"i");big=0;break;//   I  i
    case 'I':big=1;     case 'і': out+=(big > 0 ?"Ì":"ì");big=0;break;//   Ì  ì
    case 'Ї':big=1;     case 'ї': out+=(big > 0 ?"Ï":"ï");big=0;break;//   Ï  ï
    case 'Й':big=1;     case 'й': out+=(big > 0 ?"J":"j");big=0;break;//   J  j
    case 'Ј':big=1;     case 'ј': out+=(big > 0 ?"J̌ ":"ǰ");big=0;break;//   J̌  ǰ
    case 'К':big=1;     case 'к': out+=(big > 0 ?"K":"k");big=0;break;//   K  k
    case 'Л':big=1;     case 'л': out+=(big > 0 ?"L":"l");big=0;break;//   L  l
    //case 'Љ':big=1;     case 'љ': out+=(big > 0 ?"L̂ ":"l̂");big=0;break;//   L̂  l̂
    case 'Љ':big=1;     case 'љ': out+=(big > 0 ?"Ľ":"ľ");big=0;break;
    case 'М':big=1;     case 'м': out+=(big > 0 ?"M":"m");big=0;break;//   M  m
    case 'Н':big=1;     case 'н': out+=(big > 0 ?"N":"n");big=0;break;//   N  n
    //case 'Њ':big=1;     case 'њ': out+=(big > 0 ?"N̂ ":"n̂");big=0;break;//   N̂  n̂
    case 'Њ':big=1;     case 'њ': out+=(big > 0 ?"Ň":"ň");big=0;break;
    case 'О':big=1;     case 'о': out+=(big > 0 ?"O":"o");big=0;break;//   O  o
    case 'П':big=1;     case 'п': out+=(big > 0 ?"P":"p");big=0;break;//   P  p
    case 'Р':big=1;     case 'р': out+=(big > 0 ?"R":"r");big=0;break;//   R  r
    case 'С':big=1;     case 'с': out+=(big > 0 ?"S":"s");big=0;break;//   S  s
    case 'Т':big=1;     case 'т': out+=(big > 0 ?"T":"t");big=0;break;//   T  t
    case 'Ќ':big=1;     case 'ќ': out+=(big > 0 ?"Ḱ":"ḱ");big=0;break;//   Ḱ  ḱ
    case 'Ћ':big=1;     case 'ћ': out+=(big > 0 ?"Ć":"ć");big=0;break;//   Ć  ć - miękkie "cz"?
    case 'У':big=1;     case 'у': out+=(big > 0 ?"U":"u");big=0;break;//   U  u
    //case 'ОУ':big=1;     case 'оу' //???    
    case 'Ў':big=1;     case 'ў': out+=(big > 0 ?"Ŭ":"ŭ");big=0;break;//   Ŭ  ŭ
    case 'Ф':big=1;     case 'ф': out+=(big > 0 ?"F":"f");big=0;break;//   F  f
    case 'Х':big=1;     case 'х': out+=(big > 0 ?"H":"h");big=0;break;//   H  h
    case 'Ц':big=1;     case 'ц': out+=(big > 0 ?"C":"c");big=0;break;//   C  c
    case 'Ч':big=1;     case 'ч': out+=(big > 0 ?"Č":"č");big=0;break;//   Č  č
    //case 'Џ':big=1;     case 'џ': out+=(big > 0 ?"D̂ ":"d̂");big=0;break;//   D̂  d̂
    case 'Џ':big=1;     case 'џ': out+=(big > 0 ?"D^":"d^");big=0;break;
    case 'Ш':big=1;     case 'ш': out+=(big > 0 ?"Š":"š");big=0;break;//   Š  š
    case 'Щ':big=1;     case 'щ': out+=(big > 0 ?"Ŝ":"ŝ");big=0;break;//   Ŝ  ŝ
    case 'Ъ':big=1;     case 'ъ': out+=(big > 0 ?"ʺ":"ʺ");big=0;break;//   ʺ  ʺ
    case 'Ы':big=1;     case 'ы': out+=(big > 0 ?"Y":"y");big=0;break;//   Y  y
    case 'Ь':big=1;     case 'ь': out+=(big > 0 ?"ʹ":"ʹ");big=0;break;//   ʹ  ʹ
    case 'Ѣ':big=1;     case 'ѣ': out+=(big > 0 ?"Ě":"ě");big=0;break;//   Ě  ě
    case 'Э':big=1;     case 'э': out+=(big > 0 ?"È":"è");big=0;break;//   È  è
    case 'Ю':big=1;     case 'ю': out+=(big > 0 ?"Û":"û");big=0;break;//   Û  û
    case 'Я':big=1;     case 'я': out+=(big > 0 ?"Â":"â");big=0;break;//  Â  â
    //case 'ʼ':    ʼ
    //Extensions:
    case 'Ѡ':big=1;     case 'ѡ': out+=(big > 0 ?"Ô":"ô");big=0;break;//   O, Ô  o, ô
    case 'Ѧ':big=1;     case 'ѧ': out+=(big > 0 ?"Ę":"ę");big=0;break;//   Ę  ę
    case 'Ѩ':big=1;     case 'ѩ': out+=(big > 0 ?"JĘ":"ję");big=0;break;//   JĘ  ję
    case 'Ѫ':big=1;     case 'ѫ': out+=(big > 0 ?"Ǎ":"ǎ");big=0;break;//   Ǎ  ǎ
    case 'Ѭ':big=1;     case 'ѭ': out+=(big > 0 ?"JǪ":"jǫ");big=0;break;//   JǪ  jǫ
    case 'Ѯ':big=1;     case 'ѯ': out+=(big > 0 ?"KS":"ks");big=0;break;//   KS  ks
    case 'Ѱ':big=1;     case 'ѱ': out+=(big > 0 ?"PS":"ps");big=0;break;//   PS  ps
    //case 'Ѳ':big=1;     case 'ѳ': out+=(big > 0 ?"F̀ ":"f̀");big=0;break;//   F̀  f̀
    case 'Ѳ':big=1;     case 'ѳ': out+=(big > 0 ?"F`":"f`");big=0;break;
    case 'Ѵ':big=1;     case 'ѵ': out+=(big > 0 ?"Ỳ":"ỳ");big=0;break;//   Ỳ  ỳ
    case 'Ѥ':big=1;     case 'ѥ': out+=(big > 0 ?"JE":"je");big=0;break;//   JE  je
    case 'Ꙗ':big=1;     case 'ꙗ': out+=(big > 0 ?"JA":"ja");big=0;break;//   JA  ja
          
    //case 'Ь':big=1;     case 'ь': out+=(big > 0 ?'ʹ':'ʹ');big=0;break;  //ʹ
    //case 'ʼ': out+=(big > 0 ?'ʺ':'ʺ');big=0;break;  //ʺ
    default://All other characters 
      out+=c;big=0;break;
    }//end switch
  }
  
  return out+"\n[ISO9 ext.]";
}

public String trUkrainian(String inp,String out)
//transliteration from  Cyrillic into GOST 1986, but 'И' --> 'Y'
{
  int big=0;
  
  for(int p=0;p<inp.length();p++)
  {
    char c=inp.charAt(p);
    switch( c ){
    case 'А':big=1;     case 'а': out+=(big > 0 ?'A':'a');big=0;break;  //a
    case 'Б':big=1;     case 'б': out+=(big > 0 ?'B':'b');big=0;break;  //b
    case 'В':big=1;     case 'в': out+=(big > 0 ?'V':'v');big=0;break;  //v
    case 'Г':big=1;     case 'г': out+=(big > 0 ?'G':'g');big=0;break;  //g  (gh)
    case 'Ґ':big=1;     case 'ґ': out+=(big > 0 ?"G`":"g`");big=0;break;//g
    case 'Д':big=1;     case 'д': out+=(big > 0 ?'D':'d');big=0;break;  //d
    case 'Е':big=1;     case 'е': out+=(big > 0 ?'E':'e');big=0;break;  //e
    case 'Є':big=1;     case 'є': out+=(big > 0 ?"Je":"je");big=0;break;//je
    case 'Ж':big=1;     case 'ж': out+=(big > 0 ?'Ž':'ž');big=0;break;  //ž
    case 'З':big=1;     case 'з': out+=(big > 0 ?'Z':'z');big=0;break;  //z
    //case 'И':big=1;     case 'и': out+=(big > 0 ?'I':'i');big=0;break;  //i ? y
    case 'И':big=1;     case 'и': out+=(big > 0 ?'Y':'y');big=0;break;  //i ? y
    case 'І':big=1;     case 'i': out+=(big > 0 ?'I':'i');big=0;break;  //i ? i
    case 'Ї':big=1;     case 'ї': out+=(big > 0 ?'I':'i');big=0;break;  //i ? ji
    case 'Й':big=1;     case 'й': out+=(big > 0 ?'J':'j');big=0;break;  //j
    case 'К':big=1;     case 'к': out+=(big > 0 ?'K':'k');big=0;break;  //k
    case 'Л':big=1;     case 'л': out+=(big > 0 ?'L':'l');big=0;break;  //l
    case 'М':big=1;     case 'м': out+=(big > 0 ?'M':'m');big=0;break;  //m
    case 'Н':big=1;     case 'н': out+=(big > 0 ?'N':'n');big=0;break;  //n
    case 'О':big=1;     case 'о': out+=(big > 0 ?'O':'o');big=0;break;  //o
    case 'П':big=1;     case 'п': out+=(big > 0 ?'P':'p');big=0;break;  //p
    case 'Р':big=1;     case 'р': out+=(big > 0 ?'R':'r');big=0;break;  //r
    case 'С':big=1;     case 'с': out+=(big > 0 ?'S':'s');big=0;break;  //s
    case 'Т':big=1;     case 'т': out+=(big > 0 ?'T':'t');big=0;break;  //t
    case 'У':big=1;     case 'у': out+=(big > 0 ?'U':'u');big=0;break;  //u
    case 'Ф':big=1;     case 'ф': out+=(big > 0 ?'F':'f');big=0;break;  //f
    case 'Х':big=1;     case 'х': out+=(big > 0 ?'H':'h');big=0;break;  //h
    case 'Ц':big=1;     case 'ц': out+=(big > 0 ?'C':'c');big=0;break;  //c
    case 'Ч':big=1;     case 'ч': out+=(big > 0 ?'Č':'č');big=0;break;  //č
    case 'Ш':big=1;     case 'ш': out+=(big > 0 ?'Š':'š');big=0;break;  //š
    case 'Щ':big=1;     case 'щ': out+=(big > 0 ?"Šč":"šč");big=0;break;//šč
    case 'Ю':big=1;     case 'ю': out+=(big > 0 ?"Ju":"ju");big=0;break;//ju
    case 'Я':big=1;     case 'я': out+=(big > 0 ?"Ja":"ja");big=0;break;//ja
    
    case 'Ь':big=1;     case 'ь': out+=(big > 0 ?'ʹ':'ʹ');big=0;break;  //ʹ
    case 'ʼ': out+=(big > 0 ?'ʺ':'ʺ');big=0;break;  //ʺ

    default://All other characters 
      out+=c;big=0;break;
    }//end switch
  }
  
  return out+"\n[GOST 1986y]";
}

} //END OF CLASS
/**
2021 (c) Fasada Open Software Group PL

https://pl.wikibooks.org/wiki/Unicode/Alfabet_%C5%82aci%C5%84ski/%C5%81aci%C5%84ski_rozszerzony_A

https://en.wikipedia.org/wiki/Glagolitic_script
https://en.wikipedia.org/wiki/Polish_alphabet
https://en.wikipedia.org/wiki/Ukrainian_alphabet
https://en.wikipedia.org/wiki/Romanization_of_Ukrainian
https://en.wikipedia.org/wiki/Belarusian_alphabet
https://en.wikipedia.org/wiki/Romanization_of_Belarusian
https://en.wikipedia.org/wiki/Bulgarian_alphabet
https://en.wikipedia.org/wiki/Romanization_of_Bulgarian
https://en.wikipedia.org/wiki/Scientific_transliteration_of_Cyrillic

http://steen.free.fr/interslavic/orthography.html
http://pl.neoslavonic.org/lessons/1
http://tutorial.neoslavonic.org/lessons/1/glagolica.gif

Język nowosłowiański używa generalnie dwóch alfabetów: łacińskiego i cyrylicy. 
Ponadto ma także zapis dostępny w alfabecie ASCII  oraz alfabecie greckim. 
Możliwe jest także korzystanie dla własnej przyjemności, z pierwszego w historii słowiańskiego pisma: głagolicy.

POMOCNICZO --> https://interslavic-dictionary.com/
           --> http://steen.free.fr/interslavic/slovianto1.html
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


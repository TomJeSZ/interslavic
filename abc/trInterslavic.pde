/**
2021 (c) Fasada Open Software Group PL
http://steen.free.fr/interslavic/orthography.html
http://pl.neoslavonic.org/lessons/1
http://tutorial.neoslavonic.org/lessons/1/glagolica.gif
*/

String trInterlavic(String inp,String out)
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

/**
https://github.com/TomJeSZ/interslavic/tree/main/abc
*/

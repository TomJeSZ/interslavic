/**
2021 (c) Fasada Open Software Group PL
https://en.wikipedia.org/wiki/Belarusian_alphabet
https://en.wikipedia.org/wiki/Romanization_of_Belarusian
*/

String trBelorusCyrLat(String inp,String out)
//transliteration from Cyrillic into National 2007 standard
{ 
  int big=0;

  for(int p=0;p<inp.length();p++)
  {
    char c=inp.charAt(p);
    switch( c ){
    //case '':out+=(big > 0 ?'':'');big=0;break;  
    case 'А':big=1;
    case 'а':out+=(big > 0 ?'A':'a');big=0;break;  //...
    case 'Б':big=1;
    case 'б':out+=(big > 0 ?'B':'b');big=0;break;  // b
    case 'В':big=1;
    case 'в':out+=(big > 0 ?'V':'v');big=0;break;  // v
    case 'Г':big=1;
    case 'г':out+=(big > 0 ?'H':'h');big=0;break;  // h?
    case 'Ґ':big=1;
    case 'ґ':out+=(big > 0 ?"G":"g");big=0;break;  // ?
    case 'Д':big=1;
    case 'д':out+=(big > 0 ?'D':'d');big=0;break;  //  d
    //case 'Дж':
    //case 'дж  dž
    //case 'Дз':
    //case 'дз  dz
    case 'Е':big=1;
    case 'е':out+=(big > 0 ?"Je":"je");big=0;break;  //  je, ie
    case 'Ё':big=1;
    case 'ё':out+=(big > 0 ?"Jo":"jo");big=0;break;  //  jo, io
    case 'Ж':big=1;
    case 'ж':out+=(big > 0 ?'Ž':'ž');big=0;break;  //  ž?
    case 'З':big=1;
    //case 'зь'
    case 'з':if(inp.charAt(p+1)=='ь' || inp.charAt(p+1)=='Ь')
             {
               out+=(big > 0 ?'Ź':'ź');p++;big=0;break;  //  ź
             }
             else
             {
               out+=(big > 0 ?'Z':'z');big=0;break;  //  z
             }
             
    case 'І':big=1;
    case 'і':out+=(big > 0 ?'I':'i');big=0;break;  //  i
    case 'Й':big=1;
    case 'й':out+=(big > 0 ?'J':'j');big=0;break;  //  j
    case 'К':big=1;
    case 'к':out+=(big > 0 ?'K':'k');big=0;break;  //  k
    case 'Л':big=1;
    //case 'ль'://  ĺ
    case 'л':if(inp.charAt(p+1)=='ь' || inp.charAt(p+1)=='Ь')
             {
               out+=(big > 0 ?'Ĺ':'ĺ');p++;big=0;break;  //  ĺ ? Ľ
             }
             else
             {
               out+=(big > 0 ?'L':'l');big=0;break;  //  l
             } 
    case 'М':big=1;
    case 'м':out+=(big > 0 ?'M':'m');big=0;break;  //  m
    case 'Н':big=1;
    //case 'нь'
    case 'н':if(inp.charAt(p+1)=='ь' || inp.charAt(p+1)=='Ь')
             {
               out+=(big > 0 ?'Ń':'ń');p++;big=0;break;  //  ń
             }
             else
             {
               out+=(big > 0 ?'N':'n');big=0;break;  //  n
             }
             
    case 'О':big=1;
    case 'о':out+=(big > 0 ?'O':'o');big=0;break;  //  o
    case 'П':big=1;
    case 'п':out+=(big > 0 ?'P':'p');big=0;break;  //  p
    case 'Р':big=1;
    case 'р':out+=(big > 0 ?'R':'r');big=0;break;  //  r
    case 'С':big=1;
    //case 'сь':
    case 'с':if(inp.charAt(p+1)=='ь' || inp.charAt(p+1)=='Ь')
             {
               out+=(big > 0 ?'Ś':'ś');p++;big=0;break;  //  ś
             }
             else
             {
               out+=(big > 0 ?'S':'s');big=0;break;  //  s
             }
             
    case 'Т':big=1;
    //case 'ть':
    case 'т':if(inp.charAt(p+1)=='ь' || inp.charAt(p+1)=='Ь')
             {
               out+=(big > 0 ?"T'":"ť");p++;big=0;break;  //  ť 
             }
             else
             {
               out+=(big > 0 ?'T':'t');big=0;break;  //  t
             }
            
    //case 'Тс':
    //case 'тс': ???  
    case 'У':big=1;
    case 'у':out+=(big > 0 ?'U':'u');big=0;break;  //  u
    case 'Ў':big=1;
    case 'ў':out+=(big > 0 ?'Ŭ':'ŭ');big=0;break;  //  ŭ 
    case 'Ф':big=1;
    case 'ф':out+=(big > 0 ?'F':'f');big=0;break;  //  f
    case 'Х':big=1;
    case 'х':out+=(big > 0 ?"Ch":"ch");big=0;break;//  ch
    case 'Ц':big=1;
    //case 'ць'
    case 'ц':if(inp.charAt(p+1)=='ь' || inp.charAt(p+1)=='Ь')
             {
               out+=(big > 0 ?'Ć':'ć');p++;big=0;break;  //  ć
             }
             else
             {
               out+=(big > 0 ?'C':'c');big=0;break;  //  c
             }
             
    case 'Ч':big=1;
    case 'ч':out+=(big > 0 ?'Č':'č');big=0;break;  //  č 
    case 'Ш':big=1;
    case 'ш':out+=(big > 0 ?'Š':'š');big=0;break;  //  š
    
    case 'Ы':big=1;
    case 'ы':out+=(big > 0 ?'Y':'y');big=0;break;  //  y
    
    case 'Э':big=1;
    case 'э':out+=(big > 0 ?'E':'e');big=0;break;  //  e
    case 'Ю':big=1;
    case 'ю':out+=(big > 0 ?"Ju":"ju");big=0;break;  //  ju, iu
    case 'Я':big=1;
    case 'я':out+=(big > 0 ?"Ja":"ja");big=0;break;  //  ja, ia
    
    //Missed softenings 
    case 'Ь': big=1;
    case 'ь': println(""+inp.charAt(p-1)+c+'!');
              out+=(big > 0 ?'\'':'\'');big=0;break;  //  combining acute
    case 'ʼ': println(""+inp.charAt(p-1)+c+'?');
              out+='\'';big=0;break;  //  - ??? 
    
    //Historical letters  
    case 'И':big=1;
    case 'и':out+=(big > 0 ?'I':'i');big=0;break;  // 'i' rosyjskie? 
    case 'Щ':big=1;
    case 'щ':out+=(big > 0 ?"šč":"šč");big=0;break; //'szcz' rosyjskie?
    case 'Ъ':
    case 'ъ':
    case 'Ѣ':
    case 'ѣ'://ê

    default://All other characters 
      out+=c;big=0;break;
    }//end switch
  }
  
  return out;
}

/**
https://github.com/TomJeSZ/interslavic/tree/main/abc
*/

/**
2021 (c) Fasada Open Software Group PL
Channel: https://t.me/fasadaOSG
See:
https://en.wikipedia.org/wiki/Ukrainian_alphabet

Всі люди народжуються вільними і рівними у своїй гідності та правах. 
Вони наділені розумом і совістю і повинні діяти у відношенні один 
до одного в дусі братерства.
*/

String trUkrPolExp(String inp,String out)
//transliteration from  Cyrillic into Polish ortography (experimental)
{
  int big=0;
  
  for(int p=0;p<inp.length();p++)
  {
    char c=inp.charAt(p);
    switch( c ){
    case 'А':big=1;     case 'а': out+=(big > 0 ?'A':'a');big=0;break;  //a
    case 'Б':big=1;     case 'б': out+=(big > 0 ?'B':'b');big=0;break;  //b
    case 'В':big=1;     case 'в': out+=(big > 0 ?'W':'w');big=0;break;  //w
    //case 'Г':big=1;     case 'г': out+=(big > 0 ?'G':'g');big=0;break;  //g  (gh?)
    case 'Г':big=1;     case 'г': out+=(big > 0 ?'H':'h');big=0;break;  //gh
    case 'Ґ':big=1;     case 'ґ': out+=(big > 0 ?"G":"ġ");big=0;break; //g g̀
    case 'Д':big=1;     case 'д': out+=(big > 0 ?'D':'d');big=0;break;  //d
    case 'Е':big=1;     case 'е': out+=(big > 0 ?'E':'e');big=0;break;  //e
    case 'Є':big=1;     case 'є': out+=(big > 0 ?"Je":"je");big=0;break;//je
    case 'Ж':big=1;     case 'ж': out+=(big > 0 ?'Ż':'ż');big=0;break;  //ż
    //case 'З':big=1;     case 'з': out+=(big > 0 ?'Z':'z');big=0;break;  //z
    case 'З':big=1;    case 'з':
             if(inp.charAt(p+1)=='ь' || inp.charAt(p+1)=='Ь') //case 'зь'
             {
               out+=(big > 0 ?'Ź':'ź');p++;big=0;break;  //  ź
             }
             else
             {
               out+=(big > 0 ?'Z':'z');big=0;break;  //  z
             }
    //case 'И':big=1;     case 'и': out+=(big > 0 ?'I':'i');big=0;break;  //i ? y
    case 'И':big=1;     case 'и': out+=(big > 0 ?'Y':'y');big=0;break;  //i ? y
    case 'І':big=1;     case 'i': out+=(big > 0 ?'I':'i');big=0;break;  //i ? i
    case 'Ї':big=1;     case 'ї': out+=(big > 0 ?'I':'i');big=0;break;  //i ? ji
    case 'Й':big=1;     case 'й': out+=(big > 0 ?'J':'j');big=0;break;  //j
    case 'К':big=1;     case 'к': out+=(big > 0 ?'K':'k');big=0;break;  //k
    //case 'Л':big=1;     case 'л': out+=(big > 0 ?'L':'l');big=0;break;  //l
    case 'Л':big=1;     case 'л':if(inp.charAt(p+1)=='Ь' || inp.charAt(p+1)=='ь')
                                 {
                                   out+=(big > 0 ?"L":"l");p++;big=0;break; 
                                 }
                                 else
                                 if(inp.charAt(p+1)=='Ю' || inp.charAt(p+1)=='ю' 
                                 || inp.charAt(p+1)=='Я' || inp.charAt(p+1)=='я' )//?
                                 {
                                   out+=(big > 0 ?"L":"l");big=0;break; 
                                 }
                                 else
                                 {
                                   out+=(big > 0 ?'Ł':'ł');big=0;break;//   Ł?
                                 }
    case 'М':big=1;     case 'м': out+=(big > 0 ?'M':'m');big=0;break;  //m
    case 'Н':big=1;     case 'н':if(inp.charAt(p+1)=='ь' || inp.charAt(p+1)=='Ь')
                                 {
                                   out+=(big > 0 ?"Ń":"ń");p++;big=0;break; 
                                 }
                                 else
                                 {
                                   out+=(big > 0 ?'N':'n');big=0;break;
                                 } //n
    case 'О':big=1;     case 'о': out+=(big > 0 ?'O':'o');big=0;break;  //o
    case 'П':big=1;     case 'п': out+=(big > 0 ?'P':'p');big=0;break;  //p
    case 'Р':big=1;     case 'р': out+=(big > 0 ?'R':'r');big=0;break;  //r
    case 'С':big=1;     case 'с': out+=(big > 0 ?'S':'s');big=0;break;  //s
    case 'Т':big=1;     case 'т': out+=(big > 0 ?'T':'t');big=0;break;  //t
    case 'У':big=1;     case 'у': out+=(big > 0 ?'U':'u');big=0;break;  //u
    case 'Ф':big=1;     case 'ф': out+=(big > 0 ?'F':'f');big=0;break;  //f
    case 'Х':big=1;     case 'х': out+=(big > 0 ?"Ch":"ch");big=0;break;  //ch?
    case 'Ц':big=1;     case 'ц':if(inp.charAt(p+1)=='ь' || inp.charAt(p+1)=='Ь')
                                 {
                                   out+=(big > 0 ?"Ć":"ć");p++;big=0;break; 
                                 }
                                 else
                                 {
                                   out+=(big > 0 ?'C':'c');big=0;break;
                                 }
    case 'Ч':big=1;     case 'ч': out+=(big > 0 ?"Cz":"cz");big=0;break;//č
    case 'Ш':big=1;     case 'ш': out+=(big > 0 ?"Sz":"sz");big=0;break;//š
    case 'Щ':big=1;     case 'щ': out+=(big > 0 ?"Szcz":"szcz");big=0;break;//šč
    case 'Ю':big=1;     case 'ю': out+=(big > 0 ?"Ju":"ju");big=0;break;//ju
    case 'Я':big=1;     case 'я': out+=(big > 0 ?"Ja":"ja");big=0;break;//ja
    
    case 'Ь':big=1;     case 'ь': out+=(big > 0 ?'\'':'\'');big=0;break;  //ʹ? - pozostałości, np. miekkie 't'
    // Dla przypadkowych błędów:
    case 'Ы':big=1;    case 'ы':out+=(big > 0 ?'Y':'y');big=0;break;  //  y rosyjskie
    case 'Э':big=1;    case 'э':out+=(big > 0 ?'E':'e');big=0;break;  //  e rosyjskie
    case 'Ъ':          case 'ъ':break; // twardy znak rosyjski. Bez odpowiednika
    case 'ʼ': out+=(big > 0 ?'ʺ':'ʺ');big=0;break;  //ʺ

    default://All other characters 
      out+=c;big=0;break;
    }//end switch
  }
  
  return out+"\n[Ukr->Pol/Exp./]";
}

/**
Project: https://github.com/TomJeSZ/interslavic/
Tip: You can use this software freely for private, educational and research purposes, 
but if you feel that it would be appropriate to repay somehow, please finance us 
two big coffees :-)
https://www.paypal.com/paypalme/wborkowsk
*/

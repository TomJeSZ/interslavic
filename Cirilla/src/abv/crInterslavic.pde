/**
2021 (c) Fasada Open Software Group PL
http://steen.free.fr/interslavic/orthography.html
http://pl.neoslavonic.org/lessons/1
http://tutorial.neoslavonic.org/lessons/1/glagolica.gif
*/

String crInterlavic(String inp,String out)
//Standard transliteration from latin interslavic to cyrylic interslavic with some extensions
{
  int big=0;
    
  for(int p=0;p<inp.length();p++)
  {
    char c=inp.charAt(p);
    switch( c ){
    //Latin                               -> Cyrillic                       Etymological
    case 'A':big=1;case 'a':out+=(big > 0 ?'А':'а');big=0;break;//    А@а  
    case 'B':big=1;case 'b':out+=(big > 0 ?'Б':'б');big=0;break;//  Б@б
    case 'C':big=1;case 'c':
    //(CZ,CX)
                            out+=(big > 0 ?'Ц':'ц');big=0;break;//  Ц@ц
    case 'Č':big=1;case 'č':out+=(big > 0 ?'Ч':'ч');big=0;break;//  Ч@ч
    case 'D':big=1;case 'd':out+=(big > 0 ?'Д':'д');big=0;break;//  Д@д
    //case 'DŽ  ДЖ' --> AUTO
    case 'E':big=1;case 'e':out+=(big > 0 ?'Е':'е');big=0;break;//  Е@е
    //case E -> Є@є ?
    case 'Ě':big=1;case 'ě':out+=(big > 0 ?'Є':'є');big=0;break;//  Є@є
    case 'F':big=1;case 'f':out+=(big > 0 ?'Ф':'ф');big=0;break;//  Ф@ф
    case 'G':big=1;case 'g':out+=(big > 0 ?'Г':'г');big=0;break;//  Г@г
    case 'H':big=1;case 'h':out+=(big > 0 ?'Х':'х');big=0;break;//  Х@х
    case 'I':big=1;case 'i':out+=(big > 0 ?'И':'и');big=0;break;//  И@и
    //I -> Ы@ы ?
    case 'J':big=1;case 'j':out+=(big > 0 ?'Й':'й');big=0;break;//  Й@й
    case 'K':big=1;case 'k':out+=(big > 0 ?'К':'к');big=0;break;//  К@к
    case 'L':big=1;case 'l':out+=(big > 0 ?'Л':'л');big=0;break;//  Л@л
    //case 'LJ':big=1;case 'lj':out+=(big > 0 ?'Љ':'љ');big=0;break;//  Љ@љ
    case 'M':big=1;case 'm':out+=(big > 0 ?'М':'м');big=0;break;//  М@м
    case 'N':big=1;case 'n':out+=(big > 0 ?'Н':'н');big=0;break;//  Н@н
    //case 'NJ':big=1;case 'nj':out+=(big > 0 ?'Њ':'њ');big=0;break;//  Њ@њ
    case 'O':big=1;case 'o':out+=(big > 0 ?'О':'о');big=0;break;//  О@о
    case 'P':big=1;case 'p':out+=(big > 0 ?'П':'п');big=0;break;//  П@п
    case 'R':big=1;case 'r':out+=(big > 0 ?'Р':'р');big=0;break;//  Р@р
    case 'S':big=1;case 's':out+=(big > 0 ?'С':'с');big=0;break;//  С@с
    //(SZ,SX)
    case 'Š':big=1;case 'š':out+=(big > 0 ?'Ш':'ш');big=0;break;   //Ш@ш
    case 'T':big=1;case 't':out+=(big > 0 ?'Т':'т');big=0;break;//  Т@т
    case 'U':big=1;case 'u':out+=(big > 0 ?'У':'у');big=0;break;//  У@у
    case 'V':big=1;case 'v':out+=(big > 0 ?'В':'в');big=0;break;//  В@в
    case 'Y':big=1;case 'y':out+=(big > 0 ?'Ы':'ы');big=0;break;//  Ы@ы
    case 'Z':big=1;case 'z':out+=(big > 0 ?'З':'з');big=0;break;//  З@з
    //ZS,ZX
    case 'Ż':big=1;
    case 'Ž':big=1;
    case 'ż':
    case 'ž':out+=(big > 0 ?'Ж':'ж');big=0;break;//  Ж@ж
    //Extensions
    case 'Ć':big=1;case 'ć':out+=(big > 0 ?"ЦЬ":"ць");big=0;break;//  Ц@ц Ь@ь
    case 'Ś':big=1;case 'ś':out+=(big > 0 ?"СЬ":"сь");big=0;break;//  С@с Ь@ь
    case 'Ź':big=1;case 'ź':out+=(big > 0 ?"ЗЬ":"зь");big=0;break;//  З@з Ь@ь
    case 'Ń':big=1;case 'ń':out+=(big > 0 ?'Њ':'њ');big=0;break;//  Њ@њ
    //...
    default:
    out+=c;break;
    }//end switch
  }
  
  return out+"\n[Interslavic std.ext.]";
}

/**
2021 (c) Fasada Open Software Group PL
Channel: https://t.me/fasadaOSG
See:
https://en.wikipedia.org/wiki/Scientific_transliteration_of_Cyrillic
*/

String trScientific(String inp,String out)
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

/**
Project: https://github.com/TomJeSZ/interslavic/
Tip: You can use this software freely for private, educational and research purposes, 
but if you feel that it would be appropriate to repay somehow, please finance us 
big coffees :-)
https://www.paypal.com/paypalme/wborkowsk
*/

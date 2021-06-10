/**
2021 (c) Fasada Open Software Group PL
http://tutorial.neoslavonic.org/lessons/1/glagolica.gif
*/

String trGlagolitic(String inp,String out)
//Standard transliteration from latin interslavic to cyrylic interslavic with some extensions
{
  int big=1;
    
  for(int p=0;p<inp.length();p++)
  {
    char c=inp.charAt(p);
    switch( c ){ //TODO! Na razie są tylko powtórzone kody wielkich, małych nie było w Wiki
//Glagolitic  Glag.small  latin  Cyrillic   Cyrillic small  Sound   Round 
//case 'Ⰰ': big=1;    
case 'Ⰰ':out+=(big > 0 ?'A':'a');big=0;break;//А   а   /ɑ/   Azu 
//case 'Ⰱ': big=1;    
case 'Ⰱ':out+=(big > 0 ?'B':'b');big=0;break;//Б   б   /b/   Bouky 
//case 'Ⰲ': big=1;    
case 'Ⰲ':out+=(big > 0 ?'V':'v');big=0;break;//В   в   /ʋ/   Vede 
//case 'Ⰳ': big=1;    
case 'Ⰳ':out+=(big > 0 ?'G':'g');big=0;break;//Г, Ґ   г, ґ   /ɡ/   Glagolu 
//case 'Ⰴ': big=1;    
case 'Ⰴ':out+=(big > 0 ?'D':'d');big=0;break;//Д   д   /d/   Dobro 
//case 'Ⰵ': big=1;    
case 'Ⰵ':out+=(big > 0 ?'E':'e');big=0;break;//Є, Е, Э, Ё   є, е, э, ё   /ɛ/   Jestu 
//case 'Ⰶ': big=1;    
case 'Ⰶ':out+=(big > 0 ?'Ż':'ż');big=0;break;//Ж   ж   /ʒ/   Zhivete 
//case 'Ⰷ': big=1;    
case 'Ⰷ':out+=(big > 0 ?"Dz":"dz");big=0;break;//Ѕ   ѕ   /d͡z/   Dzelo 
//case 'Ⰸ': big=1;    
case 'Ⰸ':out+=(big > 0 ?'Z':'z');big=0;break;//З   з   /z/   Zemlja 
//case 'Ⰹ': big=1;    
//case 'Ⰺ':   
case 'Ⰹ': //big=1;    
case 'Ⰺ':out+=(big > 0 ?'I':'i'/*'J':'j'*/);big=0;break;//Ι, Ї   ι, ї   /i/, /j/   I, Izhe 
//case 'Ⰻ': big=1;    
case 'Ⰻ':out+=(big > 0 ?'I':'i');big=0;break;//И   и   /i/, /j/   I 
//case 'Ⰼ': big=1;    
case 'Ⰼ':out+=(big > 0 ?"Dx":"dx");big=0;break;//  Ꙉ, Ћ, Ђ   Ꙉ, ћ, ђ   /d͡ʑ/   Gjerv 
//case 'Ⰽ': big=1;    
case 'Ⰽ':out+=(big > 0 ?'K':'k');big=0;break;//К   к   /k/   
//case 'Ⰾ': big=1;    
case 'Ⰾ':out+=(big > 0 ?'L':'l');big=0;break;//Л, Љ   л, љ   /l/, /ʎ/   Ljudie 
//case 'Ⰿ': big=1;    
case 'Ⰿ':out+=(big > 0 ?'M':'m');big=0;break;//М   м   /m/   Myslite 
//case 'Ⱀ': big=1;    
case 'Ⱀ':out+=(big > 0 ?'N':'n');big=0;break;//Н, Њ   н, њ   /n/, /ɲ/   Nashi 
//case 'Ⱁ': big=1;    
case 'Ⱁ':out+=(big > 0 ?'O':'o');big=0;break;//О   о   /ɔ/   Onu 
//case 'Ⱂ': big=1;    
case 'Ⱂ':out+=(big > 0 ?'P':'p');big=0;break;//П   п   /p/   Pokoi 
//case 'Ⱃ': big=1;    
case 'Ⱃ':out+=(big > 0 ?'R':'r');big=0;break;//Р   р   /r/   Rici 
//case 'Ⱄ': big=1;    
case 'Ⱄ':out+=(big > 0 ?'S':'s');big=0;break;//С   с   /s/   Slovo 
//case 'Ⱅ': big=1;    
case 'Ⱅ':out+=(big > 0 ?'T':'t');big=0;break;//Т   т   /t/   Tvrido 
//case 'Ⱆ': big=1;    
case 'Ⱆ':out+=(big > 0 ?'U':'u');big=0;break;//У   у   /u/   Uku 
//case 'Ⱇ': big=1;    
case 'Ⱇ':out+=(big > 0 ?'F':'f');big=0;break;//Ф   ф   /f/   Fritu 
//case 'Ⱈ': big=1;    
case 'Ⱈ':out+=(big > 0 ?'H':'h');big=0;break;//Х   х   /x/   Heru 
//case 'Ⱉ': big=1;    
case 'Ⱉ':out+=(big > 0 ?'O':'o');big=0;break;//Ѡ   ѡ   /ɔ/   Out 
//case 'Ⱋ': big=1;    
case 'Ⱋ':out+=(big > 0 ?"Sxcx":"sxcx"/*,"","šč"*/);big=0;break;//Щ   щ   /tʲ/, /ʃ͡t/   Shta 
//case 'Ⱌ': big=1;    
case 'Ⱌ':out+=(big > 0 ?'C':'c');big=0;break;//Ц   ц   /t͡s/   Ci 
//case 'Ⱍ': big=1;    
case 'Ⱍ':out+=(big > 0 ?"Cx":"cx"/*,,č'*/);big=0;break;//Ч, Џ   ч, џ   /t͡ʃ/   Chrivi 
//case 'Ⱎ': big=1;    
case 'Ⱎ':out+=(big > 0 ?"Sx":"sx"/*,,š'*/);big=0;break;//Ш   ш   /ʃ/   Sha 
//case 'Ⱏ': big=1;    
case 'Ⱏ':out+='“';big=0;break;//Ъ   ъ   /ɯ/   Jeru, Jerъ 
//case 'ⰟⰊ': big=1;    case 'ⰟⰊ':out+=(big > 0 ?'Y':'y');big=0;break;//  Ы   ы   /ɨ/   Jery 
case 'Ⱐ': big=1;    
case 'ⱁ':out+='`';big=0;break;//Ь   ь   /ə/   Jeri, Jerь 
//case 'Ⱑ': big=1;    
case 'Ⱑ':out+=(big > 0 ?"Ja":"ja");big=0;break;//Ѣ, Я   ѣ, я   /æ/, /jɑ/   Jati 
//case 'Ⱖ': big=1;    
case 'Ⱖ':out+=(big > 0 ?"Jo":"jo");big=0;break;//Ё   ё   /jo/   Glagolitic capital letter Yo.svg 
//case 'Ⱓ': big=1;    
case 'Ⱓ':out+=(big > 0 ?"Ju":"ju");big=0;break;//Ю   ю   /ju/   Jou 
//case 'Ⱔ': big=1;    
case 'Ⱔ':out+=(big > 0 ?'Ę':'ę');big=0;break;//Ѧ   ѧ   /ɛ̃/   Ensu (small jousu) 
//case 'Ⱗ': big=1;    
case 'Ⱗ':out+=(big > 0 ?"Ję":"ję");big=0;break;//Ѩ   ѩ   /jɛ̃/   Jensu (small jousu) 
//case 'Ⱘ': big=1;    
case 'Ⱘ':out+=(big > 0 ?'Ą':'ą');big=0;break;//Ѫ   ѫ   /ɔ̃/   Onsu (big jousu) 
//case 'Ⱙ': big=1;    
case 'Ⱙ':out+=(big > 0 ?"Ją":"ją");big=0;break;//Ѭ   ѭ   /jɔ̃/   Jonsu (big jousu) 
//case 'Ⱚ': big=1;    
case 'Ⱚ':out+=(big > 0 ?"Th":"th");big=0;break;//Ѳ   ѳ   /θ/   Thita 
//case 'Ⱛ': big=1;    
case 'Ⱛ':out+=(big > 0 ?'Y':'y');big=0;break;//Ѵ   ѵ   /ʏ/, /i/   Yzhica 
    default://All other characters 
      out+=c;big=0;break;
    }//end switch
  }
  
  return out+"\n[Glagolitic]";
}

/**
EXAMPLE OF GLAGOLITIC TEXT. Mostly small cap.
Tu Sueño ♡, [10.06.21 10:54]
Ⰵⱓ ⰿⱁⰶⱀⱁ ⰵ ⰽⱁⱃⱏⰺⱄⱅⰰⱅⰻ ⱔⰽⱁ ⱄⰵⰽⱃⰵⱅⱀⱁ ⱂⰻⱄⰿⱁ

Tu Sueño ♡, [10.06.21 10:55]
Ⰰⰽⱁ ⰾⰻ ⱀⰵⰽⱅⱁ ⰽⱁⰳⱁ ⰸⱀⰰⱎ ⰵⱓ ⱄⰵ ⱀⰰⱆⱍⰻⱅ)

Tu Sueño ♡, [10.06.21 10:55]
Ⰿⱀⰵ ⱅⰰⰽⱁ ⰶⰵ ⱄⰵ ⱂⱁⰴⱁⰱⰰⰵ ⱂⰻⱄⰰⱅⰻ ⱀⰰ ⱂⰰⱂⰻⱃⱆ ⰰⰾⰵ ⰵ ⰴⱁⰾⰳⱁ
*/

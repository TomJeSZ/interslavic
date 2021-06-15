/**
2021 (c) Fasada Open Software Group PL
Channel: https://t.me/fasadaOSG
See:
http://tutorial.neoslavonic.org/lessons/1/glagolica.gif
https://pl.wikipedia.org/wiki/G%C5%82agolica
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
case 'Ⰰ': big=1;     // Ⰰ ⰰ
case 'ⰰ':out+=(big > 0 ?'A':'a');big=0;break;//А   а   /ɑ/   Azu 
case 'Ⰱ': big=1;    //  Ⰱ ⰱ
case 'ⰱ':out+=(big > 0 ?'B':'b');big=0;break;//Б   б   /b/   Bouky 
case 'Ⰲ': big=1;    
case 'ⰲ':out+=(big > 0 ?'V':'v');big=0;break;//В   в   /ʋ/   Vede 
case 'Ⰳ': big=1;   //Ⰳ ⰳ 
case 'ⰳ':out+=(big > 0 ?'G':'g');big=0;break;//Г, Ґ   г, ґ   /ɡ/   Glagolu 
case 'Ⰴ': big=1; //Ⰴ ⰴ   
case 'ⰴ':out+=(big > 0 ?'D':'d');big=0;break;//Д   д   /d/   Dobro 
case 'Ⱔ': big=1;    
case 'ⱔ':out+=(big > 0 ?"Ja":"ja");big=0;break;//Ѧ   ѧ   /ɛ̃/   Ensu (small jousu) 
case 'Ⰵ': big=1;   //  Ⰵ ⰵ 
case 'ⰵ':out+=(big > 0 ?"Je":"je");big=0;break;//Є, Е, Э, Ё   є, е, э, ё   /ɛ/   Jestu 
case 'Ⱑ': big=1;  
case 'ⱑ':out+=(big > 0 ?'Ě':'ě');big=0;break;//
case 'Ⰶ': big=1; //Ⰶ ⰶ   
case 'ⰶ':out+=(big > 0 ?'Ž':'ž');big=0;break;//Ж   ж   /ʒ/   Zhivete 
case 'Ⰷ': big=1;    //Ⰷ ⰷ
case 'ⰷ':out+=(big > 0 ?"Dz":"dz");big=0;break;//Ѕ   ѕ   /d͡z/   Dzelo 
case 'Ⰸ': big=1;  //Ⰸ ⰸ  
case 'ⰸ':out+=(big > 0 ?'Z':'z');big=0;break;//З   з   /z/   Zemlja 
case 'Ⰹ': big=1;    
case 'ⰹ':   
case 'Ⰺ': big=1;    
case 'ⰺ':out+=(big > 0 ?'J':'j');big=0;break;//Ι, Ї   ι, ї   /i/, /j/   I, Izhe 
case 'Ⰻ': big=1;    
case 'ⰻ':out+=(big > 0 ?'I':'i');big=0;break;//И   и   /i/, /j/   I 
case 'Ⰼ': big=1;    
case 'ⰼ':out+=(big > 0 ?"Dx":"dx");big=0;break;// "dź"  Ꙉ, Ћ, Ђ   Ꙉ, ћ, ђ   /d͡ʑ/   Gjerv 
case 'Ⰽ': big=1;    //  Ⰽ ⰽ
case 'ⰽ':out+=(big > 0 ?'K':'k');big=0;break;//К   к   /k/   
case 'Ⰾ': big=1;  // Ⰾ ⰾ  
case 'ⰾ':out+=(big > 0 ?'L':'l');big=0;break;//Л, Љ   л, љ   /l/, /ʎ/   Ljudie 
case 'Ⰿ': big=1;  //  
case 'Ⱞ': big=1;  //  
case 'ⱞ':
case 'ⰿ':out+=(big > 0 ?'M':'m');big=0;break;//М   м   /m/   Myslite 
case 'Ⱀ': big=1;   //Ⱀ ⱀ 
case 'ⱀ':out+=(big > 0 ?'N':'n');big=0;break;//Н, Њ   н, њ   /n/, /ɲ/   Nashi 
case 'Ⱁ': big=1;    
case 'ⱁ':out+=(big > 0 ?'O':'o');big=0;break;//О   о   /ɔ/   Onu 
case 'Ⱂ': big=1;     //Ⱂ ⱂ 
case 'ⱂ':out+=(big > 0 ?'P':'p');big=0;break;//П   п   /p/   Pokoi 
case 'Ⱃ': big=1;  //Ⱃ ⱃ
case 'ⱃ':out+=(big > 0 ?'R':'r');big=0;break;//Р   р   /r/   Rici 
case 'Ⱄ': big=1;    
case 'ⱄ':out+=(big > 0 ?'S':'s');big=0;break;//С   с   /s/   Slovo 
case 'Ⱅ': big=1;    
case 'ⱅ':out+=(big > 0 ?'T':'t');big=0;break;//Т   т   /t/   Tvrido 
case 'Ⱆ': big=1;    
case 'ⱆ':out+=(big > 0 ?'U':'u');big=0;break;//У   у   /u/   Uku 
case 'Ⱇ': big=1;    
case 'ⱇ':out+=(big > 0 ?'F':'f');big=0;break;//Ф   ф   /f/   Fritu 
case 'Ⱈ': big=1;    
case 'ⱈ':out+=(big > 0 ?'H':'h');big=0;break;//Х   х   /x/   Heru 
//case 'Ⱉ': big=1;    
case 'Ⱉ':out+=(big > 0 ?'O':'o');big=0;break;//Ѡ   ѡ   /ɔ/   Out 
case 'Ⱋ': big=1;    
case 'ⱋ':out+=(big > 0 ?"Šč":"šč");big=0;break;//Щ   щ   /tʲ/, /ʃ͡t/   Shta 
case 'Ⱌ': big=1;    
case 'ⱌ':out+=(big > 0 ?'C':'c');big=0;break;//Ц   ц   /t͡s/   Ci 
case 'Ⱍ': big=1;    
case 'ⱍ':out+=(big > 0 ?'Č':'č');big=0;break;//Ч, Џ   ч, џ   /t͡ʃ/   Chrivi 
case 'Ⱎ': big=1;    
case 'ⱎ':out+=(big > 0 ?'Š':'š');big=0;break;//Ш   ш   /ʃ/   Sha 
//case 'Ⰺ': big=1; // jer jak duże J
//case 'ⰺ':        // jer jak małe j
case 'Ⱏ': big=1;    
case 'ⱏ':if(inp.charAt(p+1)=='Ⰺ' || inp.charAt(p+1)=='ⰺ')
         {
//case 'ⰟⰊ':
           out+=(big > 0 ?'Y':'y');big=0;p++;break;//  Ы   ы   /ɨ/   Jery 
         }
         else
         {
           out+='“';big=0;break;//Ъ   ъ   /ɯ/   Jeru, Jerъ 
         }
case 'Ⱐ': big=1;    
case 'ⱐ':out+='`';big=0;break;//Ь   ь   /ə/   Jeri, Jerь 
case 'Ⱕ' : big=1;
case 'ⱕ' : out+='~';big=0;break;//znak nosowości
case 'Ⱝ': big=1;    //  Ⱝ ⱝ
case 'ⱝ':out+=(big > 0 ?"Ja":"ja");big=0;break;//Ѣ, Я   ѣ, я   /æ/, /jɑ/   Jati 
case 'Ⱖ': big=1;    
case 'ⱖ':out+=(big > 0 ?"Jo":"jo");big=0;break;//Ё   ё   /jo/   Glagolitic capital letter Yo.svg 
case 'Ⱓ': big=1;    
case 'ⱓ':out+=(big > 0 ?"Ju":"ju");big=0;break;//Ю   ю   /ju/   Jou 
case 'Ⱗ': big=1;    
case 'ⱗ':out+=(big > 0 ?"Ję":"ję");big=0;break;//Ѩ   ѩ   /jɛ̃/   Jensu (small jousu) 
case 'Ⱘ': big=1;    
case 'ⱘ':out+=(big > 0 ?'Ą':'ą');big=0;break;//Ѫ   ѫ   /ɔ̃/   Onsu (big jousu) 
case 'Ⱙ': big=1;    
case 'ⱙ':out+=(big > 0 ?"Ją":"ją");big=0;break;//Ѭ   ѭ   /jɔ̃/   Jonsu (big jousu) 
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
Ⰵ ⰴⰰⰲⱀⱏⰺ ⱇⰰⰽⱅ ⰶⰵ ⱍⰻⱅⰰⰵⰿⱏⰺ ⱅⰵⰽⱄⱅ ⰱⱆⰴⰵ ⱂⱆⱅⰰⱅⰻ ⱅⱁⰳⱁ ⰽⱅⱁ ⱍⰻⱅⰰⰵ ⱅⰵⰿ ⱔⰽ ⰵ ⱀⰰⱂⰻⱄⰰⱀ\n"
INTERSLAVIC: Je davny fakt že čitajemy tekst bude putati togo kto čitaje tem jak je napisan.
By Tu Sueño ♡

Project: https://github.com/TomJeSZ/interslavic/
Tip: You can use this software freely for private, educational and research purposes, 
but if you feel that it would be appropriate to repay somehow, please finance us two
big coffees :-)
https://www.paypal.com/paypalme/wborkowsk
*/

/**
2021 (c) Fasada Open Software Group PL
channel: https://t.me/fasadaOSG

See:
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

String trTemplate(String inp,String out)
{
  for(int p=0;p<inp.length();p++)
  {
    char c=inp.charAt(p);
    switch( c ){
    case 'a':out+='@';break;  
    //...
    default:
    out+=c;break;
    }//end switch
  }
  
  return out;
}

/**
https://github.com/TomJeSZ/interslavic/tree/main/abc
*/

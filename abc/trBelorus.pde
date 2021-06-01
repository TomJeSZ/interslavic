/**
2021 (c) Fasada Open Software PL
https://en.wikipedia.org/wiki/Belarusian_alphabet
https://en.wikipedia.org/wiki/Romanization_of_Belarusian
*/

String trBelorusCyrLat(String inp,String out)
//transliteration to National 2007 standard
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

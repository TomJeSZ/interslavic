/**
2021 (c) Fasada Open Software Group PL
https://en.wikipedia.org/wiki/Ukrainian_alphabet
https://en.wikipedia.org/wiki/Romanization_of_Ukrainian
*/

String trUkrainianCyrLat(String inp,String out)
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

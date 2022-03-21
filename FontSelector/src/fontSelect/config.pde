/**
/** Font configuration & possible others
2021 (c) Fasada Open Software Group PL
*/
import java.io.File;

int     font_index=0;
String  font_name="DialogInput.bold";
int     font_size=12;
int     font_face=Font.PLAIN;
StringDict    config=new StringDict();

Font my_font_changed()//example
{
  Font selectedFont=new Font(font_name,font_face,font_size);
  //if(selectedFont.isValid())
      textarea1.setFont(selectedFont);
  //else
  //    println("Failed creation of font:",font_name,font_face,font_size);
  return selectedFont;
}

void fontToConfig()
{
  config.set("font_index",str(font_index));
  config.set("font_name",font_name);
  config.set("font_size",str(font_size));
  config.set("font_face",str(font_face));
  //println(config);
}

void configToFont()
{
  font_index=int(config.get("font_index"));//,str(font_index));
  font_name=config.get("font_name");//,font_name);
  font_size=int(config.get("font_size"));//,str(font_size));
  font_face=int(config.get("font_face"));//,str(font_face));
}

void saveConfig(String configName)
{
  String[] keys=config.keyArray();
  String[] vals=config.valueArray();
  for(int i=0;i<keys.length;i++)
  {
      keys[i]+=":"+vals[i];
      println(keys[i]);
  }
  
  File file = new File(configName);
  String path = file.getAbsolutePath();
  println(path);
  saveStrings(path,keys);
}

void loadConfig(String configName)
{
  String path=configName;
  //File file = new File(configName);
  //path = file.getAbsolutePath();
  //println(path);
  String[] data=loadStrings(path);
  if(data==null)
  {
    println("Program is not able to open file:",configName,"\nUsing defaults!");
    fontToConfig();
  }
  else
  for(int i=0;i<data.length;i++)
  {
      println(data[i]);
      String[] splited=split(data[i],':');
      if(splited.length == 2)
        config.set(splited[0],splited[1]);
  }
}

/**
Project: https://github.com/TomJeSZ/interslavic/
Tip: You can use this software freely for private, educational and research purposes, 
but if you feel that it would be appropriate to repay somehow, please finance us 
big coffees :-)
https://www.paypal.com/paypalme/wborkowsk
*/

/**
/** Font configuration & possible others
2022 (c) Fasada Open Software Group PL
*/
import java.io.File;
import java.awt.Font;

/// Defaults of configuration.
int     font_index=0;        ///< Default index of font
String  font_name="DialogInput.bold";///< Default name of font
int     font_size=12;        ///< Default size of font
int     font_face=Font.PLAIN;///< Default face of font

/// Config dictionary.
/// Text dictionary representing the configuration 
/// read from the file and written to the file
StringDict    config=new StringDict();

/// Results of reading or writing a configuration.
/// For display in windows.
String  configMsgs="";

void loadConfig(String configName)
{
  String path=configName;
  //File file = new File(configName);
  //path = file.getAbsolutePath();
  //println(path);
  String[] data=loadStrings(path);
  if(data==null)
  {
    configMsgs="Program is not able to open file:"+configName+"\nUsing defaults!"+"\n(if path is not absolute, it should be in data/ directory!)";
    println(configMsgs);
    fontToConfig();
  }
  else
  {
    configMsgs="Configuration from "+configName+"\n(if path is not absolute, it should be in data/ directory!)";
    for(int i=0;i<data.length;i++)
    {
        println(data[i]);
        String[] splited=split(data[i],':');
        if(splited.length == 2)
          config.set(splited[0],splited[1]);
    }
    println(configMsgs);
  }
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
  
  String path=configName;
  //File file = new File(configName);
  //path = file.getAbsolutePath();
  //println(path);
  saveStrings(path,keys);
}

void fontToConfig()
{
  config.set("font_index",str(font_index));
  config.set("font_name",font_name);
  config.set("font_size",str(font_size));
  config.set("font_face",str(font_face));
}

void configToFont()
{
  font_index=int(config.get("font_index"));
  font_name=config.get("font_name");
  font_size=int(config.get("font_size"));
  font_face=int(config.get("font_face"));
}

Font example_font_changed()//example
{
  Font selectedFont=new Font(font_name,font_face,font_size);
  //if(selectedFont.isValid())
      textarea1.setFont(selectedFont);
      //textarea2
  //else
  //    println("Failed creation of font:",font_name,font_face,font_size);
  return selectedFont;
}

/**
Project: https://github.com/TomJeSZ/interslavic/
Tip: You can use this software freely for private, educational and research purposes, 
but if you feel that it would be appropriate to repay somehow, please finance us 
big coffees :-)
https://www.paypal.com/paypalme/wborkowsk
*/

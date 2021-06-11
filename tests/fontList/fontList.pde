//Font lister based on Processing Example

PFont myFont;
String[] fontList;

void setup() {
  size(500,500);
  // Uncomment the following two lines to see the available fonts 
  fontList = PFont.list();
  //printArray(fontList);
  frameRate(1);
}

boolean OK=false;
void keyPressed() {
  OK=true;
}

void mousePressed() {
  OK=true;
}

int i=0;
void draw()
{
  if(OK) { println("YES"); OK=false;}
  background(0);
  println(i,fontList[i]);
  myFont = createFont(fontList[i], 20);
  textFont(myFont);
  textAlign(CENTER,TOP);fill(255,0,0);
  text(fontList[i], width/2, 0);
  textAlign(CENTER, CENTER);fill(255);
  text("!@#$%\nABCĆDEĘ\nabcćdeę\nГледај фајлы скупины (Њ,ѣ)\nⰐⰵ ⱅⰻⰿ ⰸⰰ ⱎⱅⱁ ⰰⰾⰵ ⰿⱀⰵ ⱂⱁⰴⱁⰱⰰⰵ\n",
        width/2, height/2);
  i=(i+1)%fontList.length;
}

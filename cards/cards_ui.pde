void mousePressed() {
  pressHandler();
}

void mouseReleased() {
  releaseHandler();
}

void keyPressed() {
  keyHandler();
}
/*---------------------------------------
 UI Components of Cards_UI for Processing
 author: Lucas Cassiano - cassiano@mit.edu
 version: 2.0 by AlexGyver
 */
// Function list (2.0): https://github.com/GyverLibs/cards_ui
// Old demo: https://web.media.mit.edu/~cassiano/projects/cards_ui/
// Icon-images: https://iconsplace.com/
// Fontawesome Icons: https://fontawesome.com/download

//Colors
private color c_very_dark = color(36, 37, 46);
private color c_dark = color(29, 33, 44);
private color c_mid = color(44, 58, 71);
private color c_light= color(51, 64, 80);

private color c_primary= color(33, 115, 139);
private color c_hover = color(32, 155, 160);

private color c_text_color = color(255);
private color top_right = color(255);

//Click Options
private boolean clicked = false;
private boolean canClick = true;

//For text Input/Edit
String bufferText = null;
boolean doneText = false;

//Default sizes
private int s_big = 200;
private int s_height = 30;
private int s_med = 100;
private int s_small = 50;
private int s_stroke = 7;

//For Cards
int card_h = 0;
int card_w = 0;
private int card_x = 0;
private int card_y = 0;

private int medFontSize = 15;
private int smallFontSize = 15;
private int largeFontSize = 15;

private int d_medFontSize = 15;
private int d_smallFontSize = 15;
private int d_largeFontSize = 15;

private int d_big = 200;
private int d_height = 30;
private int d_med = 100;
private int d_small = 50;
private int d_stroke = 5;

// pos
private int _pos_y = 0;
private int _step_y = s_height+5;

// ====================================== STEP =======================================
void uiResetStep(int y) {
  _pos_y = y;
}
int uiStep() {
  _pos_y += _step_y;
  return _pos_y - _step_y;
}
int uiGetStep() {
  return _pos_y - _step_y;
}

// ====================================== SETTINGS =======================================
public void uiSetScale(float scale) {
  s_big = int(d_big * scale);
  s_height = int(d_height * scale);
  s_med = int(d_med * scale);
  s_small = int(d_small * scale);
  s_stroke = int(d_stroke * scale);
  medFontSize = int(d_medFontSize * scale);
  smallFontSize = int(d_smallFontSize * scale);
  largeFontSize = int(d_largeFontSize * scale);
  _step_y = int((d_height+5) * scale);
}
public void uiTextSize(int size) {
  medFontSize = size;
}
public void inputTextSize(int size) {
  smallFontSize = size;
}
public void tooltipTextSize(int size) {
  largeFontSize = size;
}

public void uiDark() {
  c_very_dark = color(36, 37, 46);
  c_dark = color(29, 33, 44);
  c_mid = color(44, 58, 71);
  c_light = color(51, 64, 80);
  c_hover = color(32, 155, 160);
}

public void uiLight() {
  c_very_dark = color(100);
  c_dark = color(150);
  c_mid = color(200);
  c_light = color(250);
  c_hover = color(32, 155, 160);
  c_text_color = color(10);
}

private void EditText(String txt) {
  bufferText = txt;
}

// ====================================== MISC =======================================
void uiFill() {
  background(c_dark);
}

// ====================================== TOOLTIP =======================================
//X and Y are the position of the point of the triangle
public void Tooltip(String text, int x, int y) {
  textSize(largeFontSize);
  int w = (int)textWidth(text);
  int h = 50;
  int tw = 14; //triangle width
  int th = 15; //triangle height
  noStroke();
  //Shadow
  fill(0, 0, 0, 15);
  rect(5+x-w/2, 5+y-th-h, w, h, 2);
  triangle(5+x-tw/2, 5+y-th, 5+x, 5+y, 5+x+tw/2, 5+y-th);
  //Color
  fill(c_very_dark);
  rect(x-w/2, y-th-h, w, h, 2);
  triangle(x-tw/2, y-th, x, y, x+tw/2, y-th);
  //Text
  textSize(medFontSize);
  fill(255);
  textAlign(CENTER, CENTER);
  text(text, x-w/2, y-th-h, w, h);
  //triangle(
}

// ====================================== BUTTON =======================================
//Basic Text Button
public boolean Button(String text, int x, int y, int w, int h) {
  stroke(c_very_dark);
  if (mouseX >= x && mouseX <= x+w && 
    mouseY >= y && mouseY <= y+h) {
    fill(c_hover);
    rect(x, y, w, h);
    fill(c_text_color);
    textSize(medFontSize);
    textAlign(CENTER, CENTER);
    text(text, x, y, w, h);
    if (clicked && canClick) {
      fill(c_light);
      rect(x, y, w, h);
      text(text, x, y, w, h);
      canClick = false;
      return true;
    }
  } else {
    fill(c_light);
    rect(x, y, w, h);
    fill(c_text_color);
    textSize(medFontSize);
    textAlign(CENTER, CENTER);
    text(text, x, y, w, h);
    return false;
  }

  return false;
}

boolean Button(String text) {
  return Button(text, (width-s_med)/2, uiStep(), s_med, s_height);
}

boolean Button(String text, int x) {
  return Button(text, x, uiStep(), s_med, s_height);
}

//Basic Text Button
boolean Button(String text, int x, int y) {
  return Button(text, x, y, s_med, s_height);
}

//Basic Text Button
boolean Button(String text, int x, int y, String t) {
  return Button(text, x, y, s_med, s_height, t);
}

//Button With Tooltip
boolean Button(String text, int x, int y, int w, int h, String tooltip) {
  if (mouseX >= x && mouseX <= x+w && 
    mouseY >= y && mouseY <= y+h) {
    Tooltip(tooltip, x+w/2, y-1);
    fill(c_hover);
    rect(x, y, w, h);
    fill(c_text_color);
    textSize(medFontSize);
    textAlign(CENTER, CENTER);
    text(text, x, y, w, h);
    if (clicked && canClick) {
      fill(c_light);
      rect(x, y, w, h);
      text(text, x, y, w, h);
      canClick = false;
      return true;
    }
  } else {
    fill(c_light);
    rect(x, y, w, h);
    fill(c_text_color);
    textSize(medFontSize);
    textAlign(CENTER, CENTER);
    text(text, x, y, w, h);
    return false;
  }

  return false;
}

// ====================================== FONT AWESOME =======================================
//https://fontawesome.com/v5.15/icons?d=gallery&p=2
/*--Font Awesome Icons--
 based on: 
 https://github.com/encharm/Font-Awesome-SVG-PNG
 this Method loads the .svg files from /svg/ folder
 more icons can be added at the folder, and called by its names
 ----------------*/
//This hashmap is used to avoid reload the same icon multiple times
HashMap<String, PShape> usedIcons = new HashMap<String, PShape>();

public void Icon(String name, int x, int y, int w, int h) {
  if (usedIcons.get(name)==null) {
    try {
      PShape i = loadShape(name+".svg");
      usedIcons.put(name, i);
    }
    catch(Exception e) {
      println("CARD_UI - ERROR: svg icon not found");
    }
  }
  PShape i = usedIcons.get(name);
  if (w == h && i.width != i.height) {
    if (i.width > i.height) {
      int H = int(w * i.height / i.width);
      y += (h - H) / 2;
      h = H;
    } else {
      int W = int(h * i.width / i.height);
      x += (w - W) / 2;
      w = W;
    }
  }
  shape(i, x, y, w, h);
}
public void Icon(String name, int x, int y, int w) {
  Icon(name, x, y, w, w);
}

// ====================================== IMAGE BUTTON =======================================
boolean ImageButton(PImage img, int x, int y, int w, int h, boolean select) {
  int p = min(w, h) / 10;
  int W = w-2*p, H = h-2*p;
  
  int dW = W;
  int dH = W * img.height / img.width;
  if (dH > H) {
    dH = H;
    dW = H * img.width / img.height;
  }

  int ix = x + (w - dW) / 2;
  int iy = y + (h - dH) / 2;

  if (mouseX >= x && mouseX <= x+w && 
    mouseY >= y && mouseY <= y+h) {
    fill(c_hover);
    rect(x, y, w, h);
    image(img, ix, iy, dW, dH);
    if (clicked && canClick) {
      fill(c_light);
      rect(x, y, w, h);
      image(img, ix, iy, dW, dH);
      canClick = false;
      return true;
    }
  } else {
    if (select) fill(c_dark);
    else fill(c_light);
    rect(x, y, w, h);
    image(img, ix, iy, dW, dH);
    return false;
  }
  return false;
}

boolean ImageButton(PImage img, int x, int y, int w, int h) {
  return ImageButton(img, x, y, w, h, false);
}

boolean ImageButton(PImage img, int x, int y) {
  return ImageButton(img, x, y, s_height, s_height, false);
}

boolean ImageButton(PImage img, int x, int y, boolean select) {
  return ImageButton(img, x, y, s_height, s_height, select);
}

// ====================================== ICON BUTTON =======================================
boolean IconButton(String icon, int x, int y, int w, int h, boolean select) {
  int p=min(w, h)/10;
  int ix=x+p;
  int iy=y+p;
  int iw=min(w, h)-2*p;

  if (w > h) ix = x+(w-iw)/2;
  else if (w < h) iy = y+(h-iw)/2;

  if (mouseX >= x && mouseX <= x+w && 
    mouseY >= y && mouseY <= y+h) {
    fill(c_hover);
    rect(x, y, w, h);
    Icon(icon, ix, iy, iw);
    if (clicked && canClick) {
      fill(c_light);
      rect(x, y, w, h);
      Icon(icon, ix, iy, iw);
      canClick = false;
      return true;
    }
  } else {
    if (select) fill(c_dark);
    else fill(c_light);
    rect(x, y, w, h);
    Icon(icon, ix, iy, iw);
    return false;
  }
  return false;
}

boolean IconButton(String icon, int x, int y, int w, int h) {
  return IconButton(icon, x, y, w, h, false);
}

boolean IconButton(String icon, int x, int y) {
  return IconButton(icon, x, y, s_height, s_height, false);
}

boolean IconButton(String icon, int x, int y, boolean select) {
  return IconButton(icon, x, y, s_height, s_height, select);
}

// ====================================== TEXT INPUT =======================================
public class TextInput {
  String text = "";
  boolean active = false;
  String hint = "";
  String label = "";

  public TextInput() {
  }

  public TextInput(String t) {
    this.hint = t;
  }

  public TextInput(String t, String l) {
    this.hint = t;
    this.label = l;
  }

  //Text Input
  public String draw(int x, int y, int w, int h) {
    fill(200);
    textSize(smallFontSize);
    textAlign(LEFT, BOTTOM);
    text(label, x, y-21, w, 20);
    if (active) {
      //Edit Text
      fill(c_dark);
      stroke(c_light);
      rect(x, y, w, h);
      noStroke();
      fill(c_text_color);
      textSize(medFontSize);
      textAlign(CENTER, CENTER);
      text = bufferText;
      text(text, x, y, w, h);

      if (mouseX >= x && mouseX <= x+w && 
        mouseY >= y && mouseY <= y+h) {
        //Inside
      } else {
        if (clicked) {
          doneText = true;
          //canClick = true;
          active=false;
        }
      }

      if (doneText) {
        text = bufferText;
        active = false;
        doneText = false;
      }
    } else if (mouseX >= x && mouseX <= x+w && 
      mouseY >= y && mouseY <= y+h) {
      fill(c_hover);
      rect(x, y, w, h);
      fill(c_text_color);
      textSize(medFontSize);
      textAlign(CENTER, CENTER);
      text(text, x, y, w, h);
      if (clicked && canClick) {
        fill(c_light);
        rect(x, y, w, h);
        fill(255);
        text(text, x, y, w, h);
        EditText(text);
        canClick = false;
        active = true;
      }
    } else {
      fill(c_light);
      stroke(c_dark);
      rect(x, y, w, h);
      fill(c_text_color);
      textSize(medFontSize);
      textAlign(CENTER, CENTER);
      text(text, x, y, w, h);
      active = false;
    }
    if (text.length() == 0) {
      fill(150);
      textSize(medFontSize);
      textAlign(CENTER, CENTER);
      text(hint, x, y, w, h);
    }
    return text;
  }

  public String draw(int x, int y, int w) {
    return draw(x, y, w, s_height);
  }

  public String draw(int x, int w) {
    return draw(x, uiStep(), w, s_height);
  }

  public String draw(int x) {
    return draw(x, uiStep(), s_med, s_height);
  }
  
  public String draw() {
    return draw((width-s_med)/2, uiStep(), s_med, s_height);
  }

  public String getText() {
    return text;
  }
}


// ====================================== CARD =======================================
//c_mid
public void beginCard(String card_title, int x, int y, int w, int h) {

  noStroke();
  //Shadow
  fill(0, 0, 0, 15);
  rect(x+5, y+5, w, h);
  fill(c_light);
  rect(x, y, w, 40, 2, 2, 0, 0);
  textSize(medFontSize);
  textAlign(CENTER, CENTER);
  fill(c_text_color);
  text(card_title, x, y, w, 40);
  fill(c_mid);

  rect(x, y+40, w, h-40, 0, 0, 2, 2);

  card_h = h-40;
  card_w = w;
  card_x = x;
  card_y = y+40;
  //uiLight();
}

public void beginCard(int x, int y, int w, int h) {
  noStroke();
  fill(c_mid);

  rect(x, y, w, h);

  card_h = h;
  card_w = w;
  card_x = x;
  card_y = y;
  //uiDark();
}

public void endCard() {
  card_h = 0;
  card_w = 0;
  card_y = 0;
  card_x = 0;
}

// ====================================== TOGGLE =======================================
//Toggle
public boolean Toggle(boolean value, int x, int y, int w, int h) {
  fill(c_dark);
  stroke(c_light);
  rect(x, y, w, h, h);
  noStroke();
  int pos = 0;
  if (value) pos = w-h;
  //Hover
  if (mouseX >= x && mouseX <= x+w && mouseY >= y && mouseY <= y+h) {
    fill(red(c_hover), green(c_hover), blue(c_hover), 100);  
    circle(x+h/2+pos, y+h/2, h-2);
    fill(c_hover);
    circle(x+h/2+pos, y+h/2, h-s_stroke);
    if (clicked && canClick) {
      value = !value;
      canClick = false;
      return value;
    }
  } 
  //Normal
  else {
    if (value) fill(c_hover);
    else fill(c_light);
    circle(x+h/2+pos, y+h/2, h-s_stroke);
  }

  return value;
}

public boolean Toggle(boolean value, int x, int y) {
  return Toggle(value, x, y, s_small, s_height);
}

public boolean Toggle(boolean value, int x) {
  return Toggle(value, x, uiStep(), s_small, s_height);
}

public boolean Toggle(boolean value) {
  return Toggle(value, (width-s_small)/2, uiStep(), s_small, s_height);
}

public boolean Toggle(String text, boolean value, int x, int y, int w, int h) {
  textSize(medFontSize);
  fill(c_text_color);
  textAlign(LEFT, CENTER);
  text(text, x, y, w, h);
  int pos_x = (int)textWidth(text);
  return Toggle(value, x+10+pos_x, y, s_small, s_height);
}

public boolean Toggle(String text, boolean value, int x, int y) {
  return Toggle(text, value, x, y, s_small, s_height);
}

public boolean Toggle(String text, boolean value, int x) {
  return Toggle(text, value, x, uiStep(), s_small, s_height);
}

public boolean Toggle(String text, boolean value) {
  return Toggle(text, value, (width-s_small)/2, uiStep(), s_small, s_height);
}

// ====================================== RADIO BUTTON =======================================
//Toggle
public boolean RadioButton(boolean value, int x, int y, int w) {
  noStroke();
  if (value) fill(c_hover);
  else fill(c_light);

  if (mouseX >= x && mouseX <= x+w && mouseY >= y && mouseY <= y+w) {  //Hover
    fill(red(c_hover), green(c_hover), blue(c_hover), 100);
    circle(x+w/2, y+w/2, w-2);
    if (value) fill(c_hover);
    else fill(c_light);
    circle(x+w/2, y+w/2, w-s_stroke);
    if (clicked && canClick) {
      value = !value;
      canClick = false;
      return value;
    }
  } else {
    circle(x+w/2, y+w/2, w-s_stroke);
  }
  return value;
}

public boolean RadioButton(boolean value, int x, int y) {
  return RadioButton(value, x, y, s_height);
}

public boolean RadioButton(boolean value, int x) {
  return RadioButton(value, x, uiStep(), s_height);
}

public boolean RadioButton(boolean value) {
  return RadioButton(value, (width-s_height)/2, uiStep(), s_height);
}

public boolean RadioButton(String text, boolean value, int x, int y, int w) {
  textSize(medFontSize);
  fill(c_text_color);
  textAlign(LEFT, CENTER);
  text(text, x, y+w/2);
  int pos_x = (int)textWidth(text);
  return RadioButton(value, x+10+pos_x, y, s_height);
}

public boolean RadioButton(String text, boolean value, int x, int y) {
  return RadioButton(text, value, x, y, s_height);
}

public boolean RadioButton(String text, boolean value, int x) {
  return RadioButton(text, value, x, uiStep(), s_height);
}

public boolean RadioButton(String text, boolean value) {
  return RadioButton(text, value, (width-s_height)/2, uiStep(), s_height);
}

// ====================================== SLIDER =======================================
//Basic Slider from 0f to 1f
public float Slider(float min, float max, float value, int x, int y, int w, int h) {
  noStroke();
  fill(c_light);
  rect(x, y+h/2, w, 4, 2);
  float pos = map(value, min, max, 0, w);
  fill(c_hover);
  rect(x, y+h/2, pos, 4, 2);

  //Hover
  if (mouseX >= x && mouseX <= x+w && mouseY >= y && mouseY <= y+h)
  {
    fill(c_hover);
    if (mousePressed) {
      pos = mouseX;
      value = map(pos, x, x+w, min, max);
      fill(red(c_hover), green(c_hover), blue(c_hover), 100);
      ellipse(pos, y+h/2, h, h); 
      fill(c_hover);
      ellipse(pos, y+h/2, h-s_stroke, h-s_stroke);
    } else {
      fill(red(c_hover), green(c_hover), blue(c_hover), 50);
      ellipse(pos+x, y+h/2, h, h); 
      fill(c_hover);
      ellipse(pos+x, y+h/2, h-s_stroke, h-s_stroke);
    }
  } 
  //Normal
  else {
    noStroke();
    fill(c_hover);
    ellipse(pos+x, y+h/2, h-s_stroke, h-s_stroke);
  }

  return value;
}

//Basic Slider with Tooltip
public float Slider(float min, float max, float value, int x, int y, int w, int h, char tooltip) {
  noStroke();
  fill(c_light);
  rect(x, y+h/2, w, 4, 2);
  float pos = map(value, min, max, 0, w);
  fill(c_hover);
  rect(x, y+h/2, pos, 4, 2);

  //Hover
  if (mouseX >= x && mouseX <= x+w && mouseY >= y && mouseY <= y+h)
  {

    fill(c_hover);
    if (mousePressed) {
      stroke(c_hover);
      pos = mouseX;
      value = map(pos, x, x+w, min, max);
      fill(red(c_hover), green(c_hover), blue(c_hover), 100);
      ellipse(pos, y+h/2, h, h); 
      fill(c_hover);
      ellipse(pos, y+h/2, h-s_stroke, h-s_stroke);

      //Tooltip
      if (tooltip=='%') {
        String s = (int)(value*100)+"%";
        Tooltip(s, (int)(pos), y);
      } else if (tooltip=='#') {
        String s = str((int)value);
        Tooltip(s, (int)(pos), y);
      }
    } else {
      fill(red(c_hover), green(c_hover), blue(c_hover), 50);
      ellipse(pos+x, y+h/2, h, h); 
      fill(c_hover);
      ellipse(pos+x, y+h/2, h-s_stroke, h-s_stroke);
    }
  } 
  //Normal
  else {
    noStroke();
    fill(c_hover);
    ellipse(pos+x, y+h/2, h-s_stroke, h-s_stroke);
  }

  return value;
}

public float Slider(String label, float min, float max, float value, int x, int y, int w, int h) {
  int w2 = 0;
  textSize(medFontSize);
  float tw = textWidth(label);
  textSize(medFontSize);
  fill(255);
  textAlign(LEFT, CENTER);
  text(label, x, y, tw, h);
  w2 = (int)(w-tw-15);
  return Slider(min, max, value, (int)(tw+x+15), y, w2, h);
}

public float Slider(String label, float min, float max, float value, int x, int y, int w, int h, char tooltip) {
  int w2 = 0;
  textSize(medFontSize);
  float tw = textWidth(label);
  textSize(medFontSize);
  fill(255);
  textAlign(LEFT, CENTER);
  text(label, x, y, tw, h);
  w2 = (int)(w-tw-15);
  return Slider(min, max, value, (int)(tw+x+15), y, w2, h, tooltip);
}

//Minimal Slider
public float Slider(float value, int x) {
  return Slider(0f, 1f, value, x, uiStep(), s_big, s_height);
}

public float Slider(float value, int x, int y) {
  return Slider(0f, 1f, value, x, y, s_big, s_height);
}

public float Slider(float value, int x, int y, char t) {
  return Slider(0f, 1f, value, x, y, s_big, s_height, t);
}

public float Slider(String label, float value, int x, int y) {
  return Slider(label, 0f, 1f, value, x, y, s_big, s_height);
}

public float Slider(String label, float value, int x, int y, char t) {
  return Slider(label, 0f, 1f, value, x, y, s_big, s_height, t);
}

public float Slider(String label, float value, int x, int y, int w, int h) {
  return Slider(label, 0f, 1f, value, x, y, w, h);
}

public float Slider(float value, int x, int y, int w, int h) {
  return Slider(0f, 1f, value, x, y, w, h);
}

public float Slider(float value, int x, int y, int w, int h, char t) {
  return Slider(0f, 1f, value, x, y, w, h, t);
}

public float Slider(float min, int max, int value, int x, int y, int w, int h) {
  return Slider((float) min, (float) max, value, x, y, w, h);
}

// ====================================== HANDLER =======================================
void pressHandler() {
  clicked = true;
}

void releaseHandler() {
  clicked = false;
  canClick  = true;
}

void keyHandler() {
  if (keyCode == BACKSPACE) {
    if (bufferText.length() > 0) {
      bufferText = bufferText.substring(0, bufferText.length()-1);
    }
  } else if (keyCode == DELETE) {
    bufferText = "";
  } else if (keyCode != SHIFT && keyCode != ENTER) {
    bufferText = bufferText + key;
  }

  if (keyCode == ' ') {
    bufferText = bufferText.substring(0, bufferText.length()-1);
    bufferText = bufferText + ' ';
  }

  if (keyCode == ENTER) {
    //input = myText;
    //bufferText = "";
    doneText = true;
  }
}


// ====================================== DROPDOWN =======================================
public class DropDown {
  private int selected = 0;
  private boolean open = false;

  public DropDown() {
  }

  public boolean draw(String args[], int x, int y, int w) {
    int h = s_height;
    if (Button(args[selected], x, y, w, h) || Button(" ", x+w, y, h, h)) open = !open;
    noStroke();
    if (!open) {
      triangle(x+w+h/4+1, y+0.28*h+1, x+w+h*3/4+1, y+0.28*h+1, x+w+h/2+1, y+0.71*h+1);
      stroke(c_very_dark);
    } else {
      triangle(x+w+h/4+1, y+0.71*h+1, x+w+h*3/4+1, y+0.71*h+1, x+w+h/2+1, y+0.28*h+1);
      stroke(c_very_dark);
      fill(c_light);
      rect(x+0, y+h, w+h, s_height*args.length);
      for ( int i=0; i<args.length; i++) {
        if (Button(args[i], x, y + h + h*i, w+h, h)) {
          open = false;
          selected = i;
          return true;
        }
      }
    }
    return false;
  }

  public boolean draw(String args[], int x, int y) {
    int w = 0;
    for (int i = 0; i < args.length; i++) {
      int tw = (int)textWidth(args[i]);
      if (tw > w) w = tw;
    }
    return draw(args, x, y, w+medFontSize);
  }

  public boolean draw(String args[], int x) {
    return draw(args, x, uiStep());
  }

  public int getSelected() {
    return selected;
  }
}

This is an automatic translation, may be incorrect in some places. See sources and examples!

# cards_ui
A lightweight library for creating an interface in Processing Java and Android. Source (abandoned):
- Examples: http://web.media.mit.edu/~cassiano/projects/cards_ui/index.html
- Author's repository: https://github.com/lucascassiano/cards_ui
I forked myself, finished the unfinished, fixed the broken and added a couple of quirks.

## Demo
```cppButton("Button 1", 10);
  Button("Button 2", 10);
  input.draw(10, 200);
  t = Toggle("Toggle", t, 10);
  r = RadioButton("Radio", r, 10);
  s = Slider(s, 10);
  String[] dropdown = {"Option_0123", "Option 1", "Option 2"};
  drop.draw(dropdown, 10);

  IconButton("svg/solid/address-book", 230, uiGetStep(), 10);IconButton("svg/regular/address-book", 230+s_height, uiGetStep(), 10);

  PImage img;
  img = loadImage("github-icon-256.png");
  ImageButton(img, 230, uiStep(), 90, 80, 5, false);
```
![demo](/demo.png)

## Opportunities
- Clue- Button
- Picture button
- Icon button
- Text input
- Card
- Switch
- Checkbox
- Slider
- Drop-down list
- FontAwesome iconCranberry
## Changes
- Finished DropDown
- Added font size change
- Added a change in the overall scale of the interface
- Added a standard vertical step for quick ui output
- Fixed RadioButton
- Slightly redone Toggle
- Added IconButton
- Updated icons to 6.0, painted everything whiteCranberry
## Doka
```cpp
pressHandler();
releaseHandler();
keyHandler();

uiResetStep(int y);
int uiStep();
int uiGetStep();Cranberry
uiSetScale(float scale);
uiTextSize(int size);
inputTextSize(int size);
tooltipTextSize(int size);
uiDark();
uilight();

uiFill();Tooltip(String text, int x, int y);

Button(string text);
Button(String text, int x);
Button(String text, int x, int y);
Button(String text, int x, int y, String t);
Button(String text, int x, int y, int w, int h);
Button(String text, int x, int y, int w, int h, String tooltip);

ImageButton(String icon, int x, int y);ImageButton(String icon, int x, int y, boolean select);
ImageButton(String icon, int x, int y, int w, int h);
ImageButton(String icon, int x, int y, int w, int h, boolean select);

IconButton(String icon, int x, int y);
IconButton(String icon, int x, int y, boolean select);
IconButton(String icon, int x, int y, int w, int h);
IconButton(String icon, int x, int y, int w, int h, boolean select);

TextInput(String t);TextInput(String t, String l);
draw();
draw(int x);
draw(int x, int w);
draw(int x, int y, int w);
draw(int x, int y, int w, int h);
getText();

EditText(stringtxt);beginCard(String card_title, int x, int y, int w, int h);
beginCard(int x, int y, int w, int h);

toggle(boolean value);
Toggle(boolean value, int x);
Toggle(boolean value, int x, int y);
Toggle(boolean value, int x, int y, int w, int h);
toggle(string text, boolean value);
Toggle(String text, boolean value, int x);
Toggle(String text, boolean value, int x, int y);Toggle(String text, boolean value, int x, int y, int w, int h);

RadioButton(boolean value);
RadioButton(boolean value, int x);
RadioButton(boolean value, int x, int y);
RadioButton(boolean value, int x, int y, int w);
RadioButton(String text, boolean value);
RadioButton(String text, boolean value, int x);
RadioButton(String text, boolean value, int x, int y);
RadioButton(String text, boolean value, int x, int y, int w);Cranberry
Slider(float value, int x);
Slider(float value, int x, int y);
Slider(float value, int x, int y, char t);
Slider(float value, int x, int y, int w, int h);
Slider(float value, int x, int y, int w, int h, char t);
Slider(float min, int max, int value, int x, int y, int w, int h);
Slider(float min, float max, float value, int x, int y, int w, int h);
Slider(float min, float max, float value, int x, int y, int w, int h, char tooltip);
Slider(String label, float value, int x, int y);Slider(String label, float value, int x, int y, char t);
Slider(String label, float value, int x, int y, int w, int h);
Slider(String label, float min, float max, float value, int x, int y, int w, int h);
Slider(String label, float min, float max, float value, int x, int y, int w, int h, char tooltip);

dropDown();
int getSelected();
boolean draw(String args[], int x);
boolean draw(String args[], int x, int y);
boolean draw(String args[], int x, int y, int w);Cranberry
Icon(String name, int x, int y, int w);
Icon(String name, int x, int y, int w, int h);
```
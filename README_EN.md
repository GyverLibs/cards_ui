This is an automatic translation, may be incorrect in some places. See sources and examples!

# Cards_ui
A light library for creating an interface on Processing Java and Android.The source (abandoned):
- Examples: http://web.media.mit.edu/~cassiano/projects/cards_ui/index.html
- author repository: https://github.com/lucascassiano/cards_ui
I drove to myself, finished the unfinished, fixed the inequate and added a couple of jokes.

## demo
`` `CPP
  Button ("Button 1", 10);
  Button ("Button 2", 10);
  Input.draw (10, 200);
  t = toggle ("toggle", t, 10);
  R = Radiobutton ("Radio", R, 10);
  S = slider (S, 10);
  String [] dropdown = {"Option_0123", "Option 1", "Option 2"};
  Drop.DRAW (Dropdown, 10);

  Iconbutton ("SVG/Solid/Address-Book", 230, Uigetstep (), 10);
  Iconbutton ("SVG/Regular/Address-Book", 230+S_height, UIGETSTEP (), 10);

  Pimage IMG;
  IMG = Loadimage ("Github-ICON-256.PNG");
  Imagebutton (IMG, 230, UISTEP (), 90, 80, 5, FALSE);
`` `
! [demo] (/demo.png)

## Possibilities
- Clue
- Button
- Picture button
- button with an icon
- Entering the text
- Card
- Switch
- The flag
- Slider
- Drop-down list
- FontaWesome icon

## changes
- Dropdown finished
- added a change in font size
- added a change in the total scale of the interface
- added a standard step on the vertical for quick output UI
- Radiobutton repaired
- Toggle remoded a little
- added Iconbutton
- Updated the icons to 6.0, painted everything in white

## dock
`` `CPP
Presshandler ();
Releasehandler ();
KeyHandler ();

uiresetstep (int y);
int uistep ();
int uigetstep ();

uisetscale (Float Scale);
uitextsize (int size);
Inputtextsize (int size);
TOOLTIPTEXTSIZE (Int Size);
uidark ();
uilight ();

uifill ();

Tooltip (String Text, Int X, Int y);

Button (String Text);
Button (String Text, Int X);
Button (String Text, Int X, Int y);
Button (String Text, Int X, Int Y, String T);
Button (String Text, Int X, Int y, Int w, inth);
Button (String Text, Int X, Int y, Int w, inte h, string Tooltip);

Imagebutton (String Icon, Int X, Int y);
Imagebutton (String Icon, Int X, Int y, Boolean Select);
Imagebutton (String Icon, Int X, Int y, Int w, inth);
Imagebutton (String icon, Int X, Int y, Int w, inte h, Boolean Select);

Iconbutton (String Icon, Int X, Int y);
Iconbutton (String Icon, Int X, Int y, Boolean Select);
Iconbutton (String icon, Int X, Int Y, Int w, inth);
Iconbutton (String icon, Int X, Int y, Int, Inth H, Boolean Select);

TextinPut (String T);
TextinPut (String T, String L);
DRAW ();
DRAW (int X);
DRAW (Int X, Int w);
DRAW (Int X, Int Y, Int w);
DRAW (Int X, Int Y, Int W, Int H);
Gettext ();

EditText (String Txt);

BeginCard (String Card_Title, Int X, Int y, Int w, inth);
BeginCard (Int X, Int y, Int, Inth H);

Toggle (Boolean Value);
Toggle (Boolean Value, Int X);
Toggle (Boolean Value, Int X, Int y);
TOGGLE (BOOLEAN VALUE, Int X, Int Y, Int W, Int H);
Toggle (String Text, Boolean Value);
Toggle (String Text, Boolean Value, Int X);
Toggle (String Text, Boolean Value, Int X, Int y);
Toggle (String Text, Boolean Value, Int X, Int y, Int w, inth);

Radiobutton (Boolean Value);
Radiobutton (Boolean Value, Int X);
Radiobutton (Boolean Value, Int X, Int y);
Radiobutton (Boolean Value, Int X, Int y, Int w);
Radiobutton (String Text, Boolean Value);
Radiobutton (String Text, Boolean Value, Int X);
Radiobutton (String Text, Boolean Value, Int X, Int y);
Radiobutton (String Text, Boolean Value, Int X, Int y, Int w);

Slider (Float Value, Int X);
Slider (Float Value, Int X, Int y);
Slider (Float Value, Int X, Int Y, Char T);
Slider (Float Value, Int X, Int y, Int w, inth);
Slider (Float Value, Int X, Int y, Int w, inth, char t);
Slider (Float Min, Int Max, Int Value, Int X, Int y, Int, Inth);
Slider (Float Min, Float Max, Float Value, Int X, Int y, Int w, inte h);
Slider (Float Min, Float Max, Float Value, IntsCranberries x, int y, int, inth, char Tooltip);
Slider (String Label, Float Value, Int X, Int y);
Slider (String Label, Float Value, Int X, Int Y, Char T);
Slider (String Label, Float Value, Int X, Int Y, Int, Inth H);
Slider (String Label, Float Min, Float Max, Float Value, Int X, Int Y, Int, Inth);
Slider (String Label, Float Min, Float Max, Float Value, Int X, Int y, Int, Inth, Char Tooltip);

Dropdown ();
int Getselected ();
Boolean Draw (String Args [], Int X);
Boolean Draw (String Args [], Int X, Int y);
Boolean Draw (String Args [], Int X, Int y, Int w);

Icon (string name, int x, int y, int w);
Icon (string name, int x, int y, inte w, inth);
`` `


When reporting about bugs or incorrect work of the library, it is necessary to indicate:
- The version of the library
- What is MK used
- SDK version (for ESP)
- version of Arduino ide
- whether the built -in examples work correctly, in which the functions and designs are used, leading to a bug in your code
- what code has been loaded, what work was expected from it and how it works in reality
- Ideally, attach the minimum code in which the bug is observed.Not a canvas of a thousand lines, but a minimum code
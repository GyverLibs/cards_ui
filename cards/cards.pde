void setup() {
  //size(1080, 2029);
  size(350, 550);
  uiSetScale(1.5);
  //uiLight();
}

boolean t, r, b;
float s;

TextInput input= new TextInput(" ");
DropDown drop = new DropDown();

void draw() {  
  uiFill();
  //background(200);
  //if (mouseX > 50) uiSetScale(mouseX/50.0);

  uiResetStep(10);

  Button("Button 1", 10);
  Button("Button 2", 10);
  input.draw(10, 200);
  t = Toggle(t, 10);
  r = RadioButton(r, 10);
  s = Slider(s, 10);
  String[] dropdown = {"Option_0123", "Option 1", "Option 2"};
  drop.draw(dropdown, 10);


  /*PImage img;
  img = loadImage("github-icon-256.png");
  b = ImageButton(img, 10, 100, 100, 100, b);
  */
  
  IconButton("solid/address-book", 230, uiGetStep(), 10);
  IconButton("regular/address-book", 230+s_height, uiGetStep(), 10);
}

//backPressed()
//closeKeyboard()
//openKeyboard()

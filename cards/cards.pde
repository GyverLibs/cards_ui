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
   input.draw(10);
   t = Toggle("Toggle", t, 10);
   r = RadioButton("Radio", r, 10);
   s = Slider(s, 10);
   String[] dropdown = {"Option_0123", "Option 1", "Option 2"};
   drop.draw(dropdown, 10);

  IconButton("svg/solid/bell", 230, uiGetStep());
  IconButton("svg/regular/bell", 230+s_height, uiGetStep());

  PImage img;
  img = loadImage("github-icon-256.png");  
  ImageButton(img, 230, uiStep(), 90, 80, false);
}

//backPressed()
//closeKeyboard()
//openKeyboard()

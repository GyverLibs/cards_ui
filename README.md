# cards_ui
Лёгкая библиотека для создания интерфейса на Processing Java и Android. Исходник (заброшен):
- Примеры: http://web.media.mit.edu/~cassiano/projects/cards_ui/index.html  
- Репозиторий автора: https://github.com/lucascassiano/cards_ui  
Я форкнул себе, доделал недоделанное, починил неработающее и добавил пару приколюх.

## Демо
```cpp
  Button("Button 1", 10);
  Button("Button 2", 10);
  input.draw(10, 200);
  t = Toggle("Toggle", t, 10);
  r = RadioButton("Radio", r, 10);
  s = Slider(s, 10);
  String[] dropdown = {"Option_0123", "Option 1", "Option 2"};
  drop.draw(dropdown, 10); 

  IconButton("svg/solid/address-book", 230, uiGetStep(), 10);
  IconButton("svg/regular/address-book", 230+s_height, uiGetStep(), 10);

  PImage img;
  img = loadImage("github-icon-256.png");  
  ImageButton(img, 230, uiStep(), 90, 80, 5, false);
```
![demo](/demo.png)

## Возможности
- Подсказка
- Кнопка
- Кнопка с картинкой
- Кнопка с иконкой
- Ввод текста
- Карточка
- Переключатель
- Флажок
- Слайдер
- Выпадающий список
- FontAwesome иконка

## Изменения
- Доделал DropDown
- Добавил изменение размера шрифта
- Добавил изменение общего масштаба интерфейса
- Добавил стандартный шаг по вертикали для быстрого вывода ui
- Починил RadioButton
- Добавил IconButton
- Обновил иконки до 6.0, покрасил все в белый

## Дока
```cpp
pressHandler();
releaseHandler();
keyHandler();

uiResetStep(int y);
int uiStep();
int uiGetStep();

uiSetScale(float scale);
uiTextSize(int size);
inputTextSize(int size);
tooltipTextSize(int size);
uiDark();
uiLight();

uiFill();

Tooltip(String text, int x, int y);

Button(String text, int x);
Button(String text, int x, int y);
Button(String text, int x, int y, String t);
Button(String text, int x, int y, int w, int h);
Button(String text, int x, int y, int w, int h, String tooltip);

ImageButton(String icon, int x, int y, int padding);
ImageButton(String icon, int x, int y, int padding, boolean select);
ImageButton(String icon, int x, int y, int w, int h, int padding);
ImageButton(String icon, int x, int y, int w, int h, int padding, boolean select);

IconButton(String icon, int x, int y, int padding);
IconButton(String icon, int x, int y, int padding, boolean select);
IconButton(String icon, int x, int y, int w, int h, int padding);
IconButton(String icon, int x, int y, int w, int h, int padding, boolean select);

TextInput(String t);
TextInput(String t, String l);
draw(int x, int w);
draw(int x, int y, int w);
draw(int x, int y, int w, int h);
getText();

EditText(String txt);

beginCard(String card_title, int x, int y, int w, int h);
beginCard(int x, int y, int w, int h);

Toggle(boolean value, int x);
Toggle(boolean value, int x, int y);
Toggle(boolean value, int x, int y, int w, int h);
Toggle(String text, boolean value, int x, int y, int w, int h);
Toggle(String text, boolean value, int x);
Toggle(String text, boolean value, int x, int y);

RadioButton(boolean value, int x);
RadioButton(boolean value, int x, int y);
RadioButton(boolean value, int x, int y, int w);
RadioButton(String text, boolean value, int x);
RadioButton(String text, boolean value, int x, int y);
RadioButton(String text, boolean value, int x, int y, int w);

Slider(float value, int x);
Slider(float value, int x, int y);
Slider(float value, int x, int y, char t);
Slider(float value, int x, int y, int w, int h);
Slider(float value, int x, int y, int w, int h, char t);
Slider(float min, int max, int value, int x, int y, int w, int h);
Slider(float min, float max, float value, int x, int y, int w, int h);
Slider(float min, float max, float value, int x, int y, int w, int h, char tooltip);
Slider(String label, float value, int x, int y);
Slider(String label, float value, int x, int y, char t);
Slider(String label, float value, int x, int y, int w, int h);
Slider(String label, float min, float max, float value, int x, int y, int w, int h);
Slider(String label, float min, float max, float value, int x, int y, int w, int h, char tooltip);

DropDown();
int getSelected();
boolean draw(String args[], int x);
boolean draw(String args[], int x, int y);
boolean draw(String args[], int x, int y, int w);

Icon(String name, int x, int y, int w);
Icon(String name, int x, int y, int w, int h);
```
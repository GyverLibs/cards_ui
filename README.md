[![Foo](https://img.shields.io/badge/README-ENGLISH-brightgreen.svg?style=for-the-badge)](https://github-com.translate.goog/GyverLibs/cards_ui?_x_tr_sl=ru&_x_tr_tl=en)  

[![Foo](https://img.shields.io/badge/ПОДПИСАТЬСЯ-НА%20ОБНОВЛЕНИЯ-brightgreen.svg?style=social&logo=telegram&color=blue)](https://t.me/GyverLibs)


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
- Чуть переделал Toggle
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

Button(String text);
Button(String text, int x);
Button(String text, int x, int y);
Button(String text, int x, int y, String t);
Button(String text, int x, int y, int w, int h);
Button(String text, int x, int y, int w, int h, String tooltip);

ImageButton(String icon, int x, int y);
ImageButton(String icon, int x, int y, boolean select);
ImageButton(String icon, int x, int y, int w, int h);
ImageButton(String icon, int x, int y, int w, int h, boolean select);

IconButton(String icon, int x, int y);
IconButton(String icon, int x, int y, boolean select);
IconButton(String icon, int x, int y, int w, int h);
IconButton(String icon, int x, int y, int w, int h, boolean select);

TextInput(String t);
TextInput(String t, String l);
draw();
draw(int x);
draw(int x, int w);
draw(int x, int y, int w);
draw(int x, int y, int w, int h);
getText();

EditText(String txt);

beginCard(String card_title, int x, int y, int w, int h);
beginCard(int x, int y, int w, int h);

Toggle(boolean value);
Toggle(boolean value, int x);
Toggle(boolean value, int x, int y);
Toggle(boolean value, int x, int y, int w, int h);
Toggle(String text, boolean value);
Toggle(String text, boolean value, int x);
Toggle(String text, boolean value, int x, int y);
Toggle(String text, boolean value, int x, int y, int w, int h);

RadioButton(boolean value);
RadioButton(boolean value, int x);
RadioButton(boolean value, int x, int y);
RadioButton(boolean value, int x, int y, int w);
RadioButton(String text, boolean value);
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


При сообщении о багах или некорректной работе библиотеки нужно обязательно указывать:
- Версия библиотеки
- Какой используется МК
- Версия SDK (для ESP)
- Версия Arduino IDE
- Корректно ли работают ли встроенные примеры, в которых используются функции и конструкции, приводящие к багу в вашем коде
- Какой код загружался, какая работа от него ожидалась и как он работает в реальности
- В идеале приложить минимальный код, в котором наблюдается баг. Не полотно из тысячи строк, а минимальный код

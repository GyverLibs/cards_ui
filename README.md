# cards_ui
Лёгкая и простая библиотека для создания интерфейса на Processing (Java, Android). Исходник (заброшен):
- Документация: http://web.media.mit.edu/~cassiano/projects/cards_ui/index.html  
- Репозиторий: https://github.com/lucascassiano/cards_ui  

Я форкнул себе, доделал недоделанное, починил неработающее и добавил пару приколюх.

## Демо
```cpp
Button("Button 1", 10);
Button("Button 2", 10);
input.draw(10, 200);
t = Toggle(t, 10);
r = RadioButton(r, 10);
s = Slider(s, 10);
String[] dropdown = {"Option_0123", "Option 1", "Option 2"};
drop.draw(dropdown, 10);
```
![demo](/demo.png)

## Возможности
- Подсказка
- Кнопка
- Кнопка с картинкой
- Ввод текста
- Карточка
- Переключатель
- Флажок
- Слайдер
- Выпадающий список
- FontAwesome иконка

## Изменения от AlexGyver
- Доделал DropDown
- Добавил изменение общего размера шрифта
- Добавил изменение общего масштаба интерфейса
- Добавил шаг по вертикали для быстрого вывода ui
- Починил RadioButton

## Дока
```cpp
pressHandler();
releaseHandler();
keyHandler();

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

ImageButton(PImage img, int x, int y, int w, int h);
ImageButton(PImage img, int x, int y, int w, int h, int padding);
ImageButton(PImage img, int x, int y, int w, int h, boolean select);
ImageButton(PImage img, int x, int y, int w, int h, boolean select, int padding);

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

RadioButton(boolean value, int x);
RadioButton(boolean value, int x, int y);
RadioButton(boolean value, int x, int y, int w);

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

Icon(String name, int x, int y, int w, int c);
Icon(String name, int x, int y, int w, int h, int c);
```

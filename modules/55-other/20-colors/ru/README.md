
При изучении курса мы сталкивались со свойствами, значениями которых является цвет. Такими свойствами были:

* `color`
* `background-color`
* `border-color`

Для обозначения цвета использовалась шестнадцатеричная модель RGB, которая переводится как _Red Green Blue_. В CSS для обозначения цвета в RGB используется две основные записи:

* Шестнадцатеричная. Это запись из 6 символов, разбитые на три блока по два значения. Каждый блок отвечает за один из цветов: красный, зелёный или синий
* С использованием функции `rgb(red, green, blue)`. Функция принимает три числа от _0_ до _255_, каждое из которых определяет количество красного, зелёного и синего цвета

## Шестнадцатеричная запись

При использовании такой записи используется [шестнадцатеричная система счисления](https://ru.wikipedia.org/wiki/Шестнадцатеричная_система_счисления). Запись делится на три блока по два числа:

1. от `00` до `ff` — количество красного цвета
2. от `00` до `ff` — количество зелёного цвета
3. от `00` до `ff` — количество синего цвета

```css
/* Белый цвет */
color: #ffffff;

/* Чёрный цвет */
color: #000000;
```

Предположим, что для текста нужен фиолетовый цвет. Как он получается? Для этого смешивается красный и синий цвет. В фиолетовом отсутствует зелёный цвет. Значит нужна максимальная запись в первом и третьем блоке. Итого получится цвет `#ff00ff`

<div class="hexlet-basics-example my-3" style="color: #ff00ff;">
  Текст фиолетового цвета
</div>

Можно получать разные вариации этого цвета, добавляя или уменьшая количество составных цветов

## Функция rgb

Второй способ указать цвет с помощью цветовой модели RGB — использование специальной функции `rgb()`. Она принимает три числа от _0_ до _255_, где первое число определяет количество красного цвета, второе число — количество зелёного цвета, а третье — количество синего. Ничего не напоминает?

Если вам показалось, что это похоже на шестнадцатеричную систему, то будете правы — суть точно такая же. Только записываем цвета в привычных нам цифрах. В остальном всё то же самое, а значит можно создать фиолетовый цвет, используя функцию `rgb()`:

```html
<p class="text">Текст фиолетового цвета</p>
```

```css
.text {
  color: rgb(255, 0, 255);
}
```

<div class="hexlet-basics-example my-3" style="color: rgb(255, 0, 255);">
  Текст фиолетового цвета
</div>

А вот как будет выглядеть белый и чёрный цвет при использовании функции `rgb()`:

```css
/* Белый цвет */
color: rgb(255, 255, 255);

/* Чёрный цвет */
color: rgb(0, 0, 0);
```

## Прозрачность и функция rgba()

При использовании фонового цвета часто используют не просто цвет, но и добавляют ему прозрачность. В цветовой модели RGB для этого используется понятие _«альфа»-канал_. Он определяет насколько прозрачный цвет должен выводиться и задаётся числом от _0_ до _1_, где _0_ — полностью прозрачный цвет, а _1_ — полностью непрозрачный.

Чтобы использовать альфа-канал создаётся функция `rgba()`, где `a` — `alpha`. В остальном всё точно так же, как и было изучено ранее. Сделаем полупрозрачный фиолетовый фон:

```html
<div class="background">Блок с полупрозрачным фиолетовым фоном</div>
```

```css
.background {
  background-color: rgba(255, 0, 255, 0.5);
}
```

<div class="hexlet-basics-example my-3" style="background-color: rgba(255, 0, 255, 0.5);">
  Блок с полупрозрачным фиолетовым фоном
</div>
Для усиления текста часто используется <u>подчёркивание</u>. Оно показывает важность текущего слова или текста (часто его ещё используют для указания ссылок в документе). Другим средством стилизации текста является <s>перечёркивание</s>, показывающее неправильный участок текста, например «А <s>вот так</s>, дети, не делайте».

Для такого оформления используется свойство `text-decoration` с тремя основными свойствами:

* `underline` — <u>Подчёркивание текста</u>
* `line-through` — <s>Перечёркивание текста</s>
* `overline` — <span style="text-decoration: overline;">Надчёркивание текста</span>

Чтобы отменить подчёркивание у ссылок используется значение `none`. Его часто используют для удаления подчёркивания у ссылок, которое есть по умолчанию

```html
<a href="#">Обычная ссылка с подчёркиванием по умолчанию</a>
<a href="#" class="text-decoration-none">Cсылка без подчёркивания</a>
```

```css
.text-decoration-none {
  text-decoration: none;
}
```

<div class="hexlet-basics-example my-3">
  <a href="#" class="d-block mb-3">Обычная ссылка с подчёркиванием по умолчанию</a>
  <a href="#" style="text-decoration: none">Ссылка без подчёркивания</a>
</div>

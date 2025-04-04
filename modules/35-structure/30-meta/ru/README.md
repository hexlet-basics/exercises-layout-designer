
Метатеги — служебные теги в разметке HTML. Они предназначены для указания сведений поисковым роботам и браузерам. Взгляните на вкладку в браузере с этим уроком и вы увидите текст, с помощью которого всегда сможете найти нужную вкладку, открытую в браузере.

При выводе результатов поискового запроса (например в Google или Yandex) также показывается этот заголовок и описание.

![Результат поискового запроса. Показывается заголовок и описание](../assets/search_en.png)

При добавлении статьи с сайта на страницу в социальных сетях появляется картинка и описание.

Всё это — работа метатегов. Именно в них можно определить заголовок и описание для текущей HTML-страницы, а также картинку, которая добавится при копировании ссылки в социальных сетях.

## Тег title

За заголовок во вкладке браузера отвечает парный тег `<title>`, внутри которого содержится название страницы.

Обычно советуют использовать заголовок от 50 до 80 символов. Такое ограничение существует из-за того, что поисковые системы не могут показать больше символов в качестве заголовка страницы в результатах поисковой выдачи. Заголовок внутри тега `<title>` отобразится во вкладке в браузере.

```html
<title>Code Basics: основы программирования</title>
```

## Тег meta

Большинство метатегов записываются с использованием непарного тега `<meta>`. Он принимает несколько основных атрибутов, которые помогают установить метаинформацию

### Описание

Описание часто используется при добавлении ссылки на страницу в социальных сетях. Эта информация используется поисковыми системами при выводе страницы в результатах поиска.

Чтобы установить описание, используется тег `<meta>` с двумя атрибутами:

* `name="description"`. Атрибут `name` указывает на то, какой тип метаинформации описывается в теге
* `content`. Атрибут `content` указывает саму информацию

```html
<meta name="description" content="Бесплатные практические уроки по программированию для тех, кто начинает с нуля.">
```

### Ключевые слова

В разработке для страниц часто указывают ключевые слова. Они помогают роботам корректнее собирать информацию о странице, что хорошо сказывается на продвижении сайта в интернете. Как и с описанием, для установки ключевых слов используется два атрибута. В качестве значения атрибута `name` используется `keywords`. Сами ключевые слова перечисляются через запятую

```html
<meta name="keywords" content="программирование, курсы, HTML, CSS">
```

### Кодировка страницы

Существует большое количество кодировок — таблиц символов, по которым происходит поиск буквы или символа. Раньше проблема кодировок стояла очень остро — почти для каждого языка использовалась уникальная кодировка, из-за чего открыть документ на другом языке было невозможно.

В текущее время есть универсальные кодировки, которые поддерживают символы самых разных языков, но считается хорошим тоном, в качестве метатега, указывать кодировку страницы.

Для этого указывается только один атрибут — `charset`, значением которого выступает название кодировки. В 99% случаев это _UTF-8_. Если вы встретитесь с другой кодировкой, то, скорее всего, об этом вам сообщат заранее

```html
<meta charset="UTF-8">
```

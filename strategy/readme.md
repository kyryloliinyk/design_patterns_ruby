# Problem:
The same as in Template Method,\
by this time we gonna get tid of Template Method pattern's disadvantages


Суть в том, что мы разделяем дынные(контекст) и поведение(объект) и\
в нужный момент помещаем нужную стратегию форматирования(объект с поведением)\
в нужный контекст(объект с данными).

## Solution:
Substract all formatting logic to own class\
and leave all data logic at `Report` class

## Advantages:
- the Strategy pattern is based on composition and delegation,\
rather than on inheritance\
it is easy to switch strategies at runtime.

## Runtime example:

```ruby
report = Report.new(HTMLFormatter.new)
report.output_report # get output in html format
report.formatter = PlainTextFormatter # switching formatter on the fly
report.output_report # get output in plain text format
```

#### Итого:\

Стратегия - это основанный на делегировании шаблон, который решает ту же задачу\
что и Template Method Pattern, но вместо того чтобы делать много разных
наследников с реализацией методов, сзодаются отдельные объекты\
которые отвечают за алгоритм. А данные выделяются в контекст.

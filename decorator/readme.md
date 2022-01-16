# Decorator pattern

Поозволяет легко управлять поведением объекта и добавлять к базовому поведению
дополнительное даже в несклоько "слоев".
Для реализации нужно создать объект с базовым поведением (в нашем случае SimpleWriter).
После это создать WriterDecorator, который в качестве аргумента инициализации принимает базовый класс и екстендит модель Forwardable для делегирования методов базовому классу.
После это можно создавать декораторы (NumeringWriter), которые наследуются от декоратора и переопределяют нужные методы.
```ruby
writer = NumeringWriter.new(SimpleWriter.new('pathtofile.txt'))
writer.write('hello world!') # '1: hello world!' written
writer.wave save simple_writer called save on file
writer.close save simple_writer called close on file
```

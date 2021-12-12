# Decorator pattern

Поозволяет легко управлять поведением объекта и добавлять к базовому поведению
дополнительное даже в несклоько "слоев".
```ruby
writer = NumeringWriter.new(SimpleWriter.new('pathtofile.txt'))
writer.write('hello world!') # '1: hello world!' written
writer.wave save simple_writer called save on file
writer.close save simple_writer called close on file
```

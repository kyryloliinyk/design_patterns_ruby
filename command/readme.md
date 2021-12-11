# Команда\
это четкий набор инструкций для выполнения одной специфической задачи.\
Идея шаблона в выделении кода инструкций в отдельный объект\
(лтделяем то что изменяется от неизменного)

````ruby
button = Button.new(SaveDocumentCommand.new(somedoc)) # concrete button created
button.click # document saved
````

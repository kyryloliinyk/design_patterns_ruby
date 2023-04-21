# Singleton

Это класс, который может иметь только 1 экземпляр и предоставляет глобальный
доступ к нему. Например, это может быть полезно для создания конфигураций
программы или сбора логгов.\
Для создания синглтона достаточно либо сделать метод `new` приватным, либо
заинклудить существующий в руби модуль `Aingleton`
Разница в создании синглтона вручную предполагает, что экземпляр будет создан не
дожидаясь вызова извне, а использование модуля прдполагает "ленивое создание"
по необходимости.
```ruby
require 'singleton'

class SomeSettings
    include Singleton
    attr_reader :host, :port
    def initialize
        @host = 'localhost'
        @port = 3000
    end
end

#   =========================== Manually

class SomeSettings
    @@instance = SomeSettings.new
  
    def self.instance
      @@instance
    end

    
    def initialize
        @host = 'localhost'
        @port = 3000
    end
    attr_reader :host, :port
  
    private_class_method :new
  end
```

```bash
    SomeSettings.instance.port # 3000
        SomeSettings.instance.port # localhost
        SomeSettings.new #NoMethodError: private method `new' called
```



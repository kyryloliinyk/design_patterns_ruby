# Adapter

Дозволяє об'єктам з різним інтерфейсом працювати разом.
В цьому прикладі клієнт працює з різними плтіжними системами
через бібліотеки
нічого не знаючи про їх інтерфейс тому що використовує адаптери.
Суть в тому, що клієнту байдуже який об'єкт йому дадуть. Йому важливо щоб об'є мав відповідний інтерфейс.


```ruby
ClientApp.new(platform: PayPalPlatformAdapter.new, user: User.new).call
ClientApp.new(platform: SomeOtherPlatformAdapter.new, user: User.new).call
```

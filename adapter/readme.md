# Adapter

Позволяет объектам с разными интерфейсами работать вместе.

```ruby
daata = 'some data'
repository = DataRepository.new(RemoteStorageAdapter.new(data))
repository.persist # send request to persist data
repository = DataRepository.new(FileStorageAdapter.new(data))
repository.persist # save data to file
```

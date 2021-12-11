# frozen_string_literal: true

# RemoteStorage adapter example
class RemoteStorageAdapter
  def initialize(data)
    @data = data
  end

  def persist
    puts 'send request to persist data'
  end

  private

  attr_reader :data
end

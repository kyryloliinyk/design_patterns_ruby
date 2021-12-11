# frozen_string_literal: true

# Repository class
class DataRepository
  attr_acessor :data

  def initialize(database)
    @data = data
    @databsase = database
  end

  def persist
    database.persist
  end

  private

  attr_reader :database
end

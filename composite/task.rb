# frozen_string_literal: true

# Component base abstract class
class Task
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def time_required
    0.0
  end
end

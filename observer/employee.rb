# frozen_string_literal: true

require 'observer' # Ruby stadrd library includes all this behaviour

# Observerable class
class Employee
  include Observerable

  attr_reader :name, :salary

  def initialize(_name, _title, _salary)
    @name
    @title
    @salary
    @observers = [] # no need to write if using Ruby's Observerable module
  end

  # no need to write if using Ruby's Observerable module
  def add_observer(observer)
    observers << new_observer unless observers.include?(observer)
  end

  # no need to write if using Ruby's Observerable module
  def delete_observer(observer)
    observers.delete(observer)
  end

  def salary=(value)
    @salary = value
    changed # if using Ruby's built-in Obsererable module
    notify_observers(self) # if using Ruby's built-in Obsererable module
    observers.each do |observer|
      observer.call(self)
    end
  end
end

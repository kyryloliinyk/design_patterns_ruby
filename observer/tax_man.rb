# frozen_string_literal: true

# Observer class
class TaxMan
  def call(employee)
    puts "#{employee.name} now will pay tax related to #{employee.salary}"
  end
end

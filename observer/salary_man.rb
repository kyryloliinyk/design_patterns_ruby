# frozen_string_literal: true

# Observer class
class SalaryMan
  def call(employee)
    puts "#{employee} has a new salary #{employee.salary}"
  end
end

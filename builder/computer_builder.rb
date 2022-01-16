# frozen_string_literal: true

# Computer builder
class ComputerBuilder
  attr_reader :computer

  def initialize
    @computer = Computer.new
  end

  def turbo
    computer.motherboard.cpu = TurboCPU.new
  end

  def display=(display)
    computer.display = display
  end

  def memory_size=(size)
    computer.motherboard.memory_size = size
  end

  def add_cd(writable = false)
    computer.rives << Drive.new(:cd, 460, writable)
  end

  def add_dvd(writable = false)
    computer.rives << Drive.new(:dvd, 4000, writable)
  end

  def add_hard_disk(size)
    computer.drives << Drive.new(:hard_drive, size, true)
  end
end

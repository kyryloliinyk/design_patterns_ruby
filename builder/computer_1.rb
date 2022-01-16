# frozen_string_literal: true

# frosen_string_literal: true
# Computer
class Computer
  attr_reader :display, :motherboard, :drives

  def initialize(display = :lcd, motherboard = Motherboard.new, drives = [])
    @display = display
    @motherboard = motherboard
    @drives = drives
  end
end

# CPU
class CPU
  # common stuff...
end

# BasicCPU
class BasicCPU < CPU
  # Lots of not very fast CPU-related stuff...
end

# TurboCPU
class TurboCPU < CPU
  # Lots of very fast CPU stuff...
end

# Motherboard
class Motherboard
  attr_acessor :cpu
  attr_acessor :memory_size
  def initialize(cpu = BasicCPU.new, memory_size = 1000)
    @cpu = cpu
    @memory_size = memory_size
  end
end

Drive
class Drive
  attr_reader :type, :size, :writable

  def imitialize(type, size, writable)
    @type = type
    @size = size
    @writable = writable
  end
end

# frozen_string_literal: true

# Object with basic behaviour that is gonna be decorated
class SimpleWriter
  def initialize(path)
    @file = File.open(path, 'w')
  end

  def write_line(line)
    file.print("#{line}\n")
  end

  def pos
    file.pos
  end

  def rewind
    file.rewind
  end

  def close
    file.close
  end

  private

  attr_reader :file
end

# frozen_string_literal: true

# Bumbering decorator object
class NumberingWriter < WriterDecorator
  def initialize(simple_writer)
    super(simple_writer)
    @line_number = 1
  end

  def write_line(line)
    real_writer.write_line("#{line_number}: #{line}")
    line_number += 1
  end

  private

  attr_accessor :line_nuber
end

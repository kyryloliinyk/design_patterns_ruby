# frozen_string_literal: true

# Portfolio Iterator example
class Dnevnik
  include Enumerable
  def initialize
    @marks = []
  end

  def each(&block)
    marks.each(&block)
  end

  def <<(mark)
    marks << mark
  end

  private

  attr_accessor :marks
end

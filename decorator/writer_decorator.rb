# frozen_string_literal: true

# Basic writer decorator object
class WriterDecorator
  extend Forwardable

  def_delegators :@simple_writer, :pos, :close, :rewind

  def initialize(simple_writer)
    @simple_writer = simple_writer
  end

  def write_line(line)
    simple_writer.write_line(line)
  end

  # def pos
  #   simple_writer.pos
  # end

  # def rewind
  #   simple_writer.rewind
  # end

  # def close
  #   simple_writer.close
  # end

  private

  attr_reader :simple_writer
end

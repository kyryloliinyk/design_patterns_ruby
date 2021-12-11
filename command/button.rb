# frozen_string_literal: true

# Some abscract button which we wanna to use with different commands
class Button
  attr_accessor :command

  def initialize(command)
    @command = command
  end

  def click
    command&.call
  end
end

# frozen_string_literal: true

# singleton class for logger
class SimpleLogger
  @@instance = SimpleLogger.new

  def self.instance
    @@instance
  end

  private_class_method :new
end

# require 'singleton'
# class SimpleLogger
#   include Singleton
# end

# frozen_string_literal: true

# Abstract class of Formatter that incapsulates formatting logic
class Formatter
  def output_report(_title, _text)
    raise 'Abstract method called'
  end
end

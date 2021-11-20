# frozen_string_literal: true

# Report Builder class that contains only data logic & delegates all formatting logic to given formatter
class Report
  attr_reader :title, :text
  attr_accessor :formatter

  def initialize(formatter)
    @formatter = formatter
    @title = 'Monthly Report'
    @text = ['Things are going', 'really, really well.']
  end

  def output_report
    formatter.output_report(self) # using strategy objects
    formatter.call(self) # using lambdas
  end
end

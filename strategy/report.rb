# frozen_string_literal: true

# Report Builder class that contains only data logic & delegates all formatting logic to given formatter
class Report
  delegate :output_report, to: :formatter # Rails
  attr_reader :title, :text
  attr_accessor :formatter

  def initialize(formatter)
    @formatter = formatter
    @title = 'Monthly Report'
    @text = ['Things are going', 'really, really well.']
  end

  def output_report
    formatter.output_report(self)
  end
end

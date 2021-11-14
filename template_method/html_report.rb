# frozen_string_literal: true

# Concrete HTML Report builder class Template Method example
class HTMLReport < Report
  def output_start
    puts '<!DOCTEYPE html>'
  end

  def output_head
    puts "<title>#{@title}</title>"
  end

  def output_body_start
    puts '<body>'
  end

  def output_line(line)
    puts "<p>#{line}</p>"
  end

  def output_body_end
    puts '</body>'
  end

  def output_end
    puts '</html>'
  end
end

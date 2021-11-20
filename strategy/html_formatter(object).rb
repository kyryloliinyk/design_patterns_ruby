# frozen_string_literal: true

# Concrete class HTML Formatter that incapsulates formatting logic
class HTMLFormatter
  def output_report(context)
    puts('<!DOCTYPE html>')
    puts('<head>')
    puts("<title>#{context.title}</title>")
    puts('</head>')
    buts('<body>')
    context.text.each do |line|
      puts("<p>#{line}</p>")
    end
    buts('</body>')
    puts('</html>')
  end
end

HtmlFormatter = lambda do |data_context|
    puts('<!DOCTYPE html>')
    puts('<head>')
    puts("<title>#{data_context.title}</title>")
    puts('</head>')
    buts('<body>')
    data_context.text.each do |line|
      puts("<p>#{line}</p>")
    buts('</body>')
    puts('</html>')
    end
end

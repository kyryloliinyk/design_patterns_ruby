# Problem:
The same as in Template Method,\
by this time we gonna get tid of Template Method pattern's disadvantages

## Solution:
Substract all formatting logic to own class\
and leave all data logic at `Report` class

## Advantages:
- the Strategy pattern is based on composition and delegation,\
rather than on inheritance\
it is easy to switch strategies at runtime.

## Runtime example:

```ruby
report = Report.new(HTMLFormatter.new)
report.output_report # get output in html format
report.formatter = PlainTextFormatter # switching formatter on the fly
report.output_report # get output in plain text format
```

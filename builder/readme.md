# builder pattern goal
is to help us create valid complex objects.
The idea of pattern is that it incaplsulates all building logic inside of one
object.
Lets image we are're building computer:

```ruby
#computer_1 - bad way

#Fast computer with lots of memory, HD, writable CD, & DVD

motherboard = Motherboard.new(TurboCPU.new, 32000)
  rives = [
  Drive.new(:hard_drive, 20000, true),
  Drive.new(:cd, 460, true),
  Drive.new(:dvd, 4700, false)
  ]
  computer = Computer.new(:lcd, motherboard, drives)
```

```ruby
# Same actions as above with computer_builder class:
builder = ComputerBuilder.new
builder.turbo
builder.add_cd(true)
builder.add_dvd
builder.add_hard_disk(10000)
computer = builder.computer
```

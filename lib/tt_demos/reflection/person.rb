class Person
  def initialize(name)
    @name = name
  end

  define_method(:say_hi) do |friend|
    puts "Hi, #{friend}!"
  end

  def intro
    "I'm #{@name}"
  end
end

=begin
irb
load('person.rb')
m = Person.instance_method(:say_hi)
m.source_location
m.parameters
=end

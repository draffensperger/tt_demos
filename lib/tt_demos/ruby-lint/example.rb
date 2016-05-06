class Person
  def initialize(name)
    # not setting @name
  end

  define_method(:say_hi) do
    puts 'Hi!'
  end

  def intro
    "I'm #{@name}"
  end
end

user = Person.new('Al')
user.say_hi
user.intro(:foo)

x = 1
x.downcase

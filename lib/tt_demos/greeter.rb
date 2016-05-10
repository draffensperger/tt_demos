class GreetingApp
  def self.run
    # use nil for default language
    language = nil
    Greeter.new(STDOUT).say_hi(language)
  end
end

class Greeter < Struct.new(:stream)
  HELLOS = { english: 'Hello',
             german: 'Hallo' }

  def greet(language)
    # language can be string or symbol
    hello = HELLOS[language.to_sym]
    stream.puts("#{hello}!")
  end
end
=begin
bundle console
GreetingApp.run
=end

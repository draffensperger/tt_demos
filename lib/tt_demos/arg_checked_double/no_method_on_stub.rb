module NoMethodOnStub
  class GreetingApp
    def self.run
      Greeter.new(STDOUT).say_hi
    end
  end

  class Greeter
    def initialize(stream)
      @stream = stream
    end

    def greet
      @stream.puts("Hi!")
    end
  end
end
=begin
bundle console
NoMethodOnStub::GreetingApp.run
=end

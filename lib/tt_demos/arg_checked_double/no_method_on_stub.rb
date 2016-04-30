module NoMethodOnStub
  class GreetingApp
    def self.run
      Greeter.new(STDOUT).say_hello
    end
  end

  class Greeter
    def initialize(stream)
      @stream = stream
    end

    def greet
      @stream.puts("Hello!")
    end
  end
end

module NoMethodOnArg
  class GreetingApp
    def self.run
      # give nil for the default language
      language = nil
      Greeter.new(STDOUT).greet(language)
    end
  end

  class Greeter
    HELLOS = { english: 'Hello',
               german: 'Hallo' }

    def initialize(stream)
      @stream = stream
    end

    def greet(language)
      # language can be a string or symbol
      hello = HELLOS[language.to_sym]
      @stream.puts("#{hello}!")
    end
  end
end

module NoMethodOnArgBranch
  class GreetingApp
    def self.run
      # give nil for the default language
      language = nil
      Greeter.new(STDOUT).greet(language)
    end
  end

  class Greeter
    MORNING_HELLO = { english: 'Good morning', german: 'Guten Morgen' }
    EVENING_HELLO = { english: 'Good evening', german: 'Guten Abend' }

    def initialize(stream)
      @stream = stream
    end

    def greet(language)
      greetings = Time.now.hour > 12 ? MORNING_HELLO : EVENING_HELLO
      hello = greetings[language.to_sym]
      @stream.puts("#{hello}!")
    end
  end
end

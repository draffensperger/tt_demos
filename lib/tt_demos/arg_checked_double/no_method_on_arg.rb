module NoMethodOnArg
  class GreetingApp
    def self.run
      # give nil for default language
      language = nil
      Greeter.new.greet(language)
    end
  end

  class Greeter
    HELLOS = { english: 'Hello',
               german: 'Hallo' }

    def greet(language)
      # language can be string or symbol
      hello = HELLOS[language.to_sym]
      puts("#{hello}!")
    end
  end
end

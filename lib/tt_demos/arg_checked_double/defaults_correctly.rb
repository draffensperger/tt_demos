module DefaultsCorrectly
  class GreetingApp
    def self.run
      # give nil for the default language
      language = nil
      Greeter.new.greet(language)
    end
  end

  class Greeter
    HELLOS = { english: 'Hello',
               german: 'Hallo' }

    def greet(language)
      # if nil, default to German since
      # we're marketing to Berlin startups
      language ||= :german
      puts("#{HELLOS[language.to_sym]}!")
    end
  end
end

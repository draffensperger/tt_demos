class Person
  def speak(phrase)
    STDOUT.puts(phrase)
  end
end

=begin
ruby-parse person.rb
irb
require 'parser/current'
source = File.read('person.rb')
ast = Parser::CurrentRuby.parse(source)
ast.children
ast.children[2]
ast.children[2].type
ast.children[2].children
=end

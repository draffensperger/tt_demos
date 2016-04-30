require 'spec_helper'

module NoMethodOnStub
  describe GreetingApp, '.run' do
    it 'says hello to STDOUT' do
      greeter = double(say_hello: nil)
      allow(Greeter).to receive(:new) { greeter }

      GreetingApp.run

      expect(Greeter).to have_received(:new).with(STDOUT)
      expect(greeter).to have_received(:say_hello)
    end
  end

  describe Greeter, '#greet' do
    it 'prints hello to given stream' do
      stream = double(puts: nil)

      Greeter.new(stream).greet

      expect(stream).to have_received(:puts).with('Hello!')
    end
  end
end

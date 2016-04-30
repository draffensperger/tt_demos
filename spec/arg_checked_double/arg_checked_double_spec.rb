require 'spec_helper'
require 'type_tracer'
require 'type_tracer/rspec/instance_double_arg_checker'

module NoMethodOnStub
  describe GreetingApp, '.run' do
    it 'says hello to STDOUT' do
      greeter = instance_double(Greeter, say_hello: nil)
      allow(Greeter).to receive(:new) { greeter }

      GreetingApp.run

      expect(Greeter).to have_received(:new).with(STDOUT)
      expect(greeter).to have_received(:say_hello)
    end
  end
end

module NoMethodOnArg
  describe GreetingApp, '.run' do
    it 'greets to STDOUT with default language' do
      greeter = instance_double(Greeter, greet: nil)
      allow(Greeter).to receive(:new) { greeter }

      GreetingApp.run

      expect(Greeter).to have_received(:new).with(STDOUT)
      # greeter receives nil for the default language
      expect(greeter).to have_received(:greet).with(nil)
    end
  end
end

module DefaultsCorrectly
  describe GreetingApp, '.run' do
    it 'greets to STDOUT with default language' do
      greeter = instance_double(Greeter, greet: nil)
      allow(Greeter).to receive(:new) { greeter }

      GreetingApp.run

      expect(Greeter).to have_received(:new).with(STDOUT)
      # expect that the greeter receives nil for the default language
      expect(greeter).to have_received(:greet).with(nil)
    end
  end
end

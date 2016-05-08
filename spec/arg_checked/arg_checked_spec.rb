require 'spec_helper'
require 'type_tracer/rspec/'\
  'instance_double_arg_checker'

module NoMethodOnArg
  describe GreetingApp, '.run' do
    it 'greets with default language' do
      greeter =
        instance_double(Greeter,
                        greet: nil)
      allow(Greeter)
        .to receive(:new) { greeter }

      GreetingApp.run

      expect(Greeter)
        .to have_received(:new)
        .with(STDOUT)
      # gets nil for default language
      expect(greeter)
        .to have_received(:greet)
        .with(nil)
    end
  end
end
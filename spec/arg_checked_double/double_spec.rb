require 'simplecov'
SimpleCov.start

require 'tt_demos/'\
  'arg_checked_double/'\
  'no_method_on_stub'

module NoMethodOnStub
  describe GreetingApp, '.run' do
    it 'says hello to STDOUT' do
      greeter = double(say_hi: nil)
      allow(Greeter).to receive(:new)
        .and_return(greeter)

      GreetingApp.run

      expect(Greeter)
        .to have_received(:new)
        .with(STDOUT)
      expect(greeter)
        .to have_received(:say_hi)
    end
  end

  describe Greeter, '#greet' do
    it 'prints hi to given stream' do
      stream = double(puts: nil)

      Greeter.new(stream).greet

      expect(stream)
        .to have_received(:puts)
        .with('Hi!')
    end
  end
end

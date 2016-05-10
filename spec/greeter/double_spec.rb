require 'simplecov'
SimpleCov.start
require 'tt_demos/greeter'

describe GreetingApp, '.run' do
  it 'says hello to STDOUT' do
    greeter = double(say_hi: nil)
    allow(Greeter).to receive(:new) { greeter }

    GreetingApp.run

    expect(greeter).to have_received(:say_hi)
  end
end

describe Greeter, '#greet' do
  it 'prints hi to given stream' do
    stream = double(puts: nil)

    Greeter.new(stream).greet(:english)

    expect(stream).to have_received(:puts)
      .with('Hello!')
  end
end

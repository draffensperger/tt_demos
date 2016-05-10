require 'spec_helper'

describe GreetingApp, '.run' do
  it 'says hi to STDOUT' do
    greeter = instance_double(Greeter,
                              say_hi: nil)
    allow(Greeter).to receive(:new) { greeter }

    GreetingApp.run

    expect(Greeter).to have_received(:new)
      .with(STDOUT)
    expect(greeter).to have_received(:say_hi)
  end
end

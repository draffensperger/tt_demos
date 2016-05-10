require 'spec_helper'

describe GreetingApp, '.run' do
  it 'greets with default language' do
    greeter = instance_double(Greeter,
                              greet: nil)
    allow(Greeter).to receive(:new)
      .and_return(greeter)

    GreetingApp.run

    # greeter receives nil for the
    # default language
    expect(greeter)
      .to have_received(:greet).with(nil)
  end
end

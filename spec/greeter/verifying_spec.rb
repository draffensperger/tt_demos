require 'spec_helper'
#require 'type_tracer/rspec/instance_double_arg_checker'

describe GreetingApp, '.run' do
  it 'greets in default language' do
    greeter = instance_double(Greeter,
                              say_hi: nil)
    allow(Greeter)
      .to receive(:new) { greeter }

    GreetingApp.run

    # gets nil for default language
    expect(greeter)
      .to have_received(:greet)
      .with(nil)
  end
end

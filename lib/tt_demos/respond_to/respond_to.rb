class Greeter
  def method_missing(symbol, *args, &block)
    puts "Called #{symbol} with #{args.inspect}"
  end

  def respond_to_missing?(symbol, include_private = false)
    true
  end
end

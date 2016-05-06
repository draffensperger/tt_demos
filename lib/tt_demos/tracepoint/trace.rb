TracePoint.trace(:line) do |t|
  puts "Line #{t.lineno}"
end

TracePoint.trace(:call) do |t|
  puts "  Ruby call "\
    "#{t.defined_class}##{t.method_id}"
  t.binding.local_variables.each do |var|
    val = t.binding.local_variable_get(var)
    puts "    #{var}: #{val.inspect}"
  end
end

TracePoint.trace(:return) do |t|
  puts "  #{t.defined_class}##{t.method_id}"\
    " returned: #{t.return_value.inspect}"
end

TracePoint.trace(:c_call) do |t|
  puts "  C call "\
    "#{t.defined_class}##{t.method_id}"
end

TracePoint.trace(:c_return) do |t|
  puts "  C "\
    "#{t.defined_class}##{t.method_id} "\
    "returned: #{t.return_value.inspect}"
end

def say_hi(friend)
  speak("Hi, #{friend}!")
  friend.size
end

def speak(phrase)
  puts "\n-- #{phrase} --\n\n"
  true
end

say_hi('Joe')

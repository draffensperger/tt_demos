Dir["#{File.dirname(__FILE__)}/tt_demos/arg_checked_double/*.rb"].each do |file|
  next if file =~ /version/
  load file
end

module TtDemos
  # Your code goes here...
end

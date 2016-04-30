Dir["#{File.dirname(__FILE__)}/tt_demos/**/*.rb"].each do |file|
  next if file =~ /version/
  load file
end

module TtDemos
  # Your code goes here...
end

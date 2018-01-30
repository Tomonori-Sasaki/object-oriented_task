Dir.glob('src/**/*.rb').each { |file|
  require File.expand_path("../#{file}", __FILE__)
}

Action.new.send(ARGV[0])

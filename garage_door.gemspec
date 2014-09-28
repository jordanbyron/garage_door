Gem::Specification.new do |s|
  s.name        = "garage_door"
  s.version     = File.read('VERSION').strip
  s.authors     = ["Jordan Byron"]
  s.email       = ["jordan.byron@gmail.com"]
  s.homepage    = "https://github.com/jordanbyron/garage_door"
  s.summary     = "Library to control my garage door"
  s.description = "Library to control my garage door"

  s.files = Dir["{bin,lib}/**/*"] +
    %w{README.md LICENSE}

  s.add_dependency "prowl",     ">= 0.1.3"
  s.add_dependency "redis",     ">= 3.0.7"
  s.add_dependency "wiringpi2", ">= 2.0.1"
end

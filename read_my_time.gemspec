$LOAD_PATH.unshift File.expand_path('../lib', __FILE__)
require 'read_my_time/version'

Gem::Specification.new do |s|
  s.name        = 'read_my_time'

  s.summary     = "Humanize your times in your locale language"
  s.description = "Humanize your times in your locale language. It is plain Ruby, you don't need Rails or Sinatra, but it works great with them."

  s.author      = 'David Zaba'
  s.email       = 'dpzaba@gmail.com'

  s.version     = ReadMyTime::VERSION
  s.date        = '2017-05-20'

  s.homepage    = 'https://github.com/dpzaba/read_my_time'
  s.license     = 'MIT'

  s.files       = Dir["lib/**/*.rb"]

  s.add_development_dependency('activesupport', '~> 5.1')
  s.add_development_dependency('minitest', '~> 5.10')
  s.add_development_dependency('rake', '~> 12.0')

  s.add_runtime_dependency('i18n', '~> 0.8')
end

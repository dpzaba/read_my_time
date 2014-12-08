Gem::Specification.new do |s|
  s.name        = 'read_my_time'
  s.version     = '0.1.0'
  s.date        = '2014-12-07'
  s.summary     = "Humanize your times in your locale language"
  s.description = "Humanize your times in your locale language. It is plain Ruby, you don't need Rails or Sinatra, but it works great with them also."

  s.author      = 'David Zaba'
  s.email       = 'dpzaba@gmail.com'

  s.files       = Dir["lib/**/*.rb"]

  s.add_runtime_dependency('i18n', '~> 0.6.11')

  s.homepage    = 'https://github.com/dpzaba/read_my_time'
  s.license     = 'MIT'
end

Gem::Specification.new do |s|
  s.name        = 'read_my_time'

  s.summary     = "Humanize your times in your locale language"
  s.description = "Humanize your times in your locale language. It is plain Ruby, you don't need Rails or Sinatra, but it works great with them."

  s.author      = 'David Zaba'
  s.email       = 'dpzaba@gmail.com'

  s.version     = `cat VERSION`.strip
  s.date        = '2014-12-07'

  s.homepage    = 'https://github.com/dpzaba/read_my_time'
  s.license     = 'MIT'

  s.add_runtime_dependency('i18n', '~> 0.8.1')
  s.add_development_dependency('activesupport', '~> 5.1.1')

  s.files       = Dir["lib/**/*.rb"]
end

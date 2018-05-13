Gem::Specification.new do |s|
  s.name        = "dalao"
  s.date        = Time.now.utc
  s.version     = "1.0.#{Time.now.utc.strftime '%-y.%-j'}.#{Time.now.to_i % 86400}"
  s.platform    = Gem::Platform::RUBY
  s.author      = 'iBug'
  #s.email       = 'http://example.com'
  s.homepage    = 'https://github.com/iBug/dalao'
  s.summary     = 'USTC dalao'
  s.license     = 'MIT'
  s.description = 'Use this gem to admire dalaos'
  s.files       = `git ls-files`.split("\n")
  s.test_files  = []
  s.executables = []

  #s.required_path = 'lib'
  #s.required_rubygems_version = '>= 1.3.6'
  #s.rubyforge_project = s.name
end

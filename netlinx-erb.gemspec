version = File.read(File.expand_path('../version', __FILE__)).strip

Gem::Specification.new do |s|
  s.name      = 'netlinx-erb'
  s.version   = version
  s.date      = Time.now.strftime '%Y-%m-%d'
  s.summary   = 'A code generation utility for AMX NetLinx control systems.'
  s.description = "A code generation utility for AMX NetLinx control systems."
  s.homepage  = 'https://github.com/amclain/netlinx-erb'
  s.authors   = ['Alex McLain', 'Joe Eli McIlvain']
  s.email     = ['alex@alexmclain.com', 'joe.eli.mac@gmail.com']
  s.license   = 'MIT'
  
  s.files     =
    ['license.txt', 'README.md'] +
    Dir[
      'bin/**/*',
      'lib/**/*',
      'doc/**/*',
      'template/**/*',
    ]
  
  s.executables = []
  
  s.add_dependency 'netlinx-workspace', '~> 0.3.0'
  
  s.add_development_dependency 'rake',      '~> 10.4'
  s.add_development_dependency 'yard',      '~> 0.8.7'
  s.add_development_dependency 'rspec',     '~> 3.1'
  s.add_development_dependency 'rspec-its', '~> 1.1'
  s.add_development_dependency 'fivemat',   '~> 1.3'
  s.add_development_dependency 'pry'
  s.add_development_dependency 'rb-readline'
end
Gem::Specification.new do |s|
  s.name        = 'nat20'
  s.version     = '1.0.0'
  s.date        = '2018-05-21'
  s.summary     = 'Adds dice rolling functionality in a tabletop RPG format'
  s.description = 'Nat20 adds easy to use dice rolling functionality with input in the style of table top role playing games. It provides functionality for single and multiple rolls and can return either an array of dice values or total roll.'
  s.author     = 'John Eckert'
  s.email       = 'johnteckert@gmail.com'
  s.files       = ['lib/nat20.rb']
  s.add_development_dependency 'rspec', '~> 3.7'
  s.homepage    =
    'http://rubygems.org/gems/nat20'
  s.license       = 'MIT'
end

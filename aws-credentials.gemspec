# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = 'aws-credentials'
  spec.version       = '1.0.0'
  spec.authors       = ['Dan Farrell <dan@farrellit.net>']
  spec.email         = %w( dan@farrellit.net )
  spec.summary       = 'Read ~/.aws/config and provide export commands for environment corresponding to a named profile'
  spec.description   = 'See Summary'
  spec.homepage      = 'https://github.com/farrellit/aws-credentials'
  spec.license       = 'Proprietary'

  spec.executables   = %w(aws-credentials)

  spec.add_dependency 'inifile', '~> 3.0.0'

end

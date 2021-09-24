# frozen_string_literal: true

require_relative 'lib/desertcart/version'

Gem::Specification.new do |spec|
  spec.name          = 'desertcart'
  spec.version       = Desertcart::VERSION
  spec.authors       = ['Jozef Vaclavik']
  spec.email         = ['jozef@desertcart.com']

  spec.summary       = 'Communicate with Desertcart API'
  spec.description   = 'Client library to talk to Desertcart API. '\
                       'Get products details, proceed with checkout '\
                       'and retrieve informations about your orders.'
  spec.homepage      = 'https://developer.desertcart.com'
  spec.license       = 'MIT'
  spec.required_ruby_version = '>= 3.0'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/desertcart/desertcart-ruby'
  spec.metadata['changelog_uri'] = 'https://github.com/desertcart/desertcart-ruby/blob/master/CHANGELOG.md'

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      f.match(%r{\A(?:test|spec|features)/})
    end
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'ledger_sync', '~> 2.2.0'
  spec.add_development_dependency 'dotenv'
  spec.add_development_dependency 'rubocop'
end

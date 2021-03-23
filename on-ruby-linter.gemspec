require_relative 'lib/on/ruby/linter/version'

Gem::Specification.new do |spec|
  spec.name          = 'on-ruby-linter'
  spec.version       = On::Ruby::Linter::VERSION
  spec.authors       = ['Robert Korzeniec']
  spec.email         = ['r.korzeniec@gmail.com']

  spec.summary       = 'Base rubocop configuration'
  spec.description   = 'Base rubocop configuration'
  spec.homepage      = 'https://github.com/onrunning/on-ruby-linter'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.3.0')

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/onrunning/on-ruby-linter'
  spec.metadata['changelog_uri'] = 'https://github.com/onrunning/on-ruby-linter/CHANGELOG.md'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
end

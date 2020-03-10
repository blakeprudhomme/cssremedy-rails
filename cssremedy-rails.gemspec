
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "cssremedy-rails/version"

Gem::Specification.new do |spec|
  spec.name          = "cssremedy-rails"
  spec.version       = Cssremedy::Rails::VERSION
  spec.authors       = ["Blake Prudhomme"]
  spec.email         = ["blake.prudhomme@gmail.com"]

  spec.summary       = %q{Integrates CSS Remedy with the rails asset pipeline.}
  spec.homepage      = "https://github.com/blakeprudhomme/cssremedy-rails"
  spec.license       = "MIT"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.1.2"
  spec.add_development_dependency "rake", ">= 12.3.3"
end

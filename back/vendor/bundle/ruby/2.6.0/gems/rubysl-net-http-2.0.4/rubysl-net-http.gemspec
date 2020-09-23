# coding: utf-8
require './lib/rubysl/net/http/version'

Gem::Specification.new do |spec|
  spec.name          = "rubysl-net-http"
  spec.version       = RubySL::Net::HTTP::VERSION
  spec.authors       = ["Brian Shirai"]
  spec.email         = ["brixen@gmail.com"]
  spec.description   = %q{Ruby standard library net-http.}
  spec.summary       = %q{Ruby standard library net-http.}
  spec.homepage      = "https://github.com/rubysl/rubysl-net-http"
  spec.license       = "BSD"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.required_ruby_version = "~> 2.0"

  spec.add_runtime_dependency "rubysl-cgi", "~> 2.0"
  spec.add_runtime_dependency "rubysl-erb", "~> 2.0"
  spec.add_runtime_dependency "rubysl-singleton", "~> 2.0"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "mspec", "~> 1.5"
  spec.add_development_dependency "rubysl-webrick", "~> 2.0"
  spec.add_development_dependency "rubysl-prettyprint", "~> 2.0"
end

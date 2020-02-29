
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "jeql/version"

Gem::Specification.new do |spec|
  spec.name          = "jeql"
  spec.version       = Jeql::VERSION
  spec.authors       = ["Florian Thomas"]
  spec.email         = ["flo@florianthomas.net"]

  spec.summary       = %q{jeql is a GraphQL plugin for jekyll}
  spec.homepage      = "https://github.com/Crunch09/jeql"
  spec.license       = "MIT"

  # To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "webmock"
  spec.add_dependency "faraday"
  spec.add_dependency "jekyll", "~> 4.0"
end

# frozen_string_literal: true

require_relative "lib/buildify/version"

Gem::Specification.new do |spec|
  spec.name          = "buildify"
  spec.version       = Buildify::VERSION
  spec.authors       = ["Pedro Piñera"]
  spec.email         = ["pedro@buildify.sh"]
  spec.summary       = "A CLI to interact with Buildify"
  spec.homepage      = "https://buildify.sh"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.7.0")
  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  spec.metadata["homepage_uri"] = spec.homepage
  # spec.metadata["source_code_uri"] = "TODO: Put your gem's public repo URL here."
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "zeitwerk", "~> 2.4.2"
  spec.add_development_dependency "rubocop-minitest", "~> 0.12.1"
end

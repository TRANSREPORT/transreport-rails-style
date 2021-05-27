# frozen_string_literal: true

require_relative "lib/transreport/style/version"

Gem::Specification.new do |spec|
  spec.name          = "transreport-style"
  spec.version       = Transreport::Style::VERSION
  spec.authors       = ["Transreport Web Team"]
  spec.email         = ["webteam@transreport.co.uk"]

  spec.summary       = "One-stop shop for Transreport's web team's linting rules"
  spec.description   = "This gem adds Rubocop, including its associated gems, to your codebase, alongside the linting rules that the Transreport web team uses."
  spec.homepage      = "https://github.com/TRANSREPORT/transreport-style"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.4.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/TRANSREPORT/transreport-style"
  spec.metadata["changelog_uri"] = "https://github.com/TRANSREPORT/transreport-style/blob/master/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"
end

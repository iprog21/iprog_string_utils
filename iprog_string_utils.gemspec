# frozen_string_literal: true

require_relative "lib/iprog_string_utils/version"

Gem::Specification.new do |spec|
  spec.name = "iprog_string_utils"
  spec.version = IprogStringUtils::VERSION
  spec.authors = ["Jayson Presto"]
  spec.email = ["iprog21@jaysonpresto.me"]

  spec.summary = "A collection of string manipulation utilities for Ruby."
  spec.description = "IprogStringUtils is a Ruby gem that provides a set of string manipulation utilities. These utilities include methods for converting strings to different cases such as camelCase, snake_case, and kebab-case, truncating strings with an ellipsis, reversing the order of words, stripping HTML tags, and more. This gem is designed to enhance the functionality of the Ruby String class with common string operations."
  spec.homepage = "https://github.com/iprog21/iprog_string_utils.git"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.0.0"

  # spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://example.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/iprog21/iprog_string_utils.git"
  spec.metadata["changelog_uri"] = "https://github.com/iprog21/iprog_string_utils/blob/master/CHANGELOG.md"
  spec.metadata["code_of_conduct_uri"] = "https://github.com/iprog21/iprog_string_utils/blob/main/CODE_OF_CONDUCT.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  gemspec = File.basename(__FILE__)
  spec.files = IO.popen(%w[git ls-files -z], chdir: __dir__, err: IO::NULL) do |ls|
    ls.readlines("\x0", chomp: true).reject do |f|
      (f == gemspec) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git appveyor Gemfile])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end

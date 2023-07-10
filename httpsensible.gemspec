# frozen_string_literal: true

require_relative "lib/httpsensible/version"

Gem::Specification.new do |spec|
  spec.name = "httpsensible"
  spec.version = Httpsensible::VERSION
  spec.authors = ["Garen J. Torikian"]
  spec.email = ["gjtorikian@users.noreply.github.com"]

  spec.summary = "An HTTP client with sensible defaults."
  spec.homepage = "https://github.com/yettoapp/httpsensible"
  spec.license = "MIT"

  spec.required_ruby_version = [">= 3.1", "< 4.0"]

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/yettoapp/httpsensible"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    %x(git ls-files -z).split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) || f.start_with?("bin/", "test/", "spec/", "features/", ".git", ".circleci", "appveyor")
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency("httpx", "~> 0.24")
  spec.add_dependency("jwt", "~> 2.7")

  spec.add_development_dependency("minitest", "~> 5.6")
  spec.add_development_dependency("minitest-focus", "~> 1.1")
end

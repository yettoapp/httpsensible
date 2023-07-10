# -*- encoding: utf-8 -*-
# stub: yard-sorbet 0.8.1 ruby lib

Gem::Specification.new do |s|
  s.name = "yard-sorbet".freeze
  s.version = "0.8.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "bug_tracker_uri" => "https://github.com/dduugg/yard-sorbet/issues", "changelog_uri" => "https://github.com/dduugg/yard-sorbet/blob/main/CHANGELOG.md", "documentation_uri" => "https://dduugg.github.io/yard-sorbet/", "homepage_uri" => "https://github.com/dduugg/yard-sorbet", "rubygems_mfa_required" => "true", "source_code_uri" => "https://github.com/dduugg/yard-sorbet", "wiki_uri" => "https://github.com/dduugg/yard-sorbet/wiki" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Douglas Eichelberger".freeze]
  s.date = "2023-04-03"
  s.description = "A YARD plugin that incorporates Sorbet type information".freeze
  s.email = "dduugg@gmail.com".freeze
  s.homepage = "https://github.com/dduugg/yard-sorbet".freeze
  s.licenses = ["Apache-2.0".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.7.0".freeze)
  s.rubygems_version = "3.4.16".freeze
  s.summary = "Create YARD docs from Sorbet type signatures".freeze

  s.installed_by_version = "3.4.16" if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_development_dependency(%q<bundler-audit>.freeze, ["~> 0.9.1"])
  s.add_development_dependency(%q<codecov>.freeze, ["~> 0.6.0"])
  s.add_development_dependency(%q<rake>.freeze, ["~> 13.0"])
  s.add_development_dependency(%q<redcarpet>.freeze, ["~> 3.5"])
  s.add_development_dependency(%q<rspec>.freeze, ["~> 3.10"])
  s.add_development_dependency(%q<rubocop>.freeze, ["~> 1.49.0"])
  s.add_development_dependency(%q<rubocop-performance>.freeze, ["~> 1.16.0"])
  s.add_development_dependency(%q<rubocop-rake>.freeze, ["~> 0.6.0"])
  s.add_development_dependency(%q<rubocop-rspec>.freeze, ["~> 2.19.0"])
  s.add_development_dependency(%q<rubocop-sorbet>.freeze, ["~> 0.7.0"])
  s.add_development_dependency(%q<sorbet>.freeze, ["~> 0.5.9204"])
  s.add_development_dependency(%q<tapioca>.freeze, ["~> 0.11.1"])
  s.add_runtime_dependency(%q<sorbet-runtime>.freeze, [">= 0.5"])
  s.add_runtime_dependency(%q<yard>.freeze, [">= 0.9"])
end

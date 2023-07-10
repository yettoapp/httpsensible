# -*- encoding: utf-8 -*-
# stub: rbi 0.0.16 ruby lib

Gem::Specification.new do |s|
  s.name = "rbi".freeze
  s.version = "0.0.16"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "allowed_push_host" => "https://rubygems.org" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Alexandre Terrasa".freeze]
  s.date = "2022-10-04"
  s.email = ["ruby@shopify.com".freeze]
  s.homepage = "https://github.com/Shopify/rbi".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.7.0".freeze)
  s.rubygems_version = "3.4.16".freeze
  s.summary = "RBI generation framework".freeze

  s.installed_by_version = "3.4.16" if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_runtime_dependency(%q<ast>.freeze, [">= 0"])
  s.add_runtime_dependency(%q<parser>.freeze, [">= 2.6.4.0"])
  s.add_runtime_dependency(%q<sorbet-runtime>.freeze, [">= 0.5.9204"])
  s.add_runtime_dependency(%q<unparser>.freeze, [">= 0"])
end

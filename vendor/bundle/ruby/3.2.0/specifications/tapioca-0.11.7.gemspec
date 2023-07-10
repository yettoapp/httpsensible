# -*- encoding: utf-8 -*-
# stub: tapioca 0.11.7 ruby lib

Gem::Specification.new do |s|
  s.name = "tapioca".freeze
  s.version = "0.11.7"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "allowed_push_host" => "https://rubygems.org" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Ufuk Kayserilioglu".freeze, "Alan Wu".freeze, "Alexandre Terrasa".freeze, "Peter Zhu".freeze]
  s.bindir = "exe".freeze
  s.date = "2023-06-23"
  s.email = ["ruby@shopify.com".freeze]
  s.executables = ["tapioca".freeze]
  s.files = ["exe/tapioca".freeze]
  s.homepage = "https://github.com/Shopify/tapioca".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.7".freeze)
  s.rubygems_version = "3.4.16".freeze
  s.summary = "A Ruby Interface file generator for gems, core types and the Ruby standard library".freeze

  s.installed_by_version = "3.4.16" if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_runtime_dependency(%q<bundler>.freeze, [">= 2.2.25"])
  s.add_runtime_dependency(%q<netrc>.freeze, [">= 0.11.0"])
  s.add_runtime_dependency(%q<parallel>.freeze, [">= 1.21.0"])
  s.add_runtime_dependency(%q<rbi>.freeze, ["~> 0.0.0", ">= 0.0.16"])
  s.add_runtime_dependency(%q<sorbet-static-and-runtime>.freeze, [">= 0.5.10187"])
  s.add_runtime_dependency(%q<spoom>.freeze, ["~> 1.2.0", ">= 1.2.0"])
  s.add_runtime_dependency(%q<thor>.freeze, [">= 1.2.0"])
  s.add_runtime_dependency(%q<yard-sorbet>.freeze, [">= 0"])
end

# -*- encoding: utf-8 -*-
# stub: rubysl-erb 2.0.2 ruby lib

Gem::Specification.new do |s|
  s.name = "rubysl-erb".freeze
  s.version = "2.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Brian Shirai".freeze]
  s.date = "2014-12-21"
  s.description = "Ruby standard library erb.".freeze
  s.email = ["brixen@gmail.com".freeze]
  s.homepage = "https://github.com/rubysl/rubysl-erb".freeze
  s.licenses = ["BSD".freeze]
  s.required_ruby_version = Gem::Requirement.new("~> 2.0".freeze)
  s.rubygems_version = "3.0.3".freeze
  s.summary = "Ruby standard library erb.".freeze

  s.installed_by_version = "3.0.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.3"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_development_dependency(%q<mspec>.freeze, ["~> 1.5"])
      s.add_development_dependency(%q<rubysl-prettyprint>.freeze, ["~> 2.0"])
      s.add_development_dependency(%q<rubysl-cgi>.freeze, ["~> 2.0"])
    else
      s.add_dependency(%q<bundler>.freeze, ["~> 1.3"])
      s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_dependency(%q<mspec>.freeze, ["~> 1.5"])
      s.add_dependency(%q<rubysl-prettyprint>.freeze, ["~> 2.0"])
      s.add_dependency(%q<rubysl-cgi>.freeze, ["~> 2.0"])
    end
  else
    s.add_dependency(%q<bundler>.freeze, ["~> 1.3"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_dependency(%q<mspec>.freeze, ["~> 1.5"])
    s.add_dependency(%q<rubysl-prettyprint>.freeze, ["~> 2.0"])
    s.add_dependency(%q<rubysl-cgi>.freeze, ["~> 2.0"])
  end
end

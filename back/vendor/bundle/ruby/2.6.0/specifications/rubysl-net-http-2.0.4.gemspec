# -*- encoding: utf-8 -*-
# stub: rubysl-net-http 2.0.4 ruby lib

Gem::Specification.new do |s|
  s.name = "rubysl-net-http".freeze
  s.version = "2.0.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Brian Shirai".freeze]
  s.date = "2013-09-29"
  s.description = "Ruby standard library net-http.".freeze
  s.email = ["brixen@gmail.com".freeze]
  s.homepage = "https://github.com/rubysl/rubysl-net-http".freeze
  s.licenses = ["BSD".freeze]
  s.required_ruby_version = Gem::Requirement.new("~> 2.0".freeze)
  s.rubygems_version = "3.0.3".freeze
  s.summary = "Ruby standard library net-http.".freeze

  s.installed_by_version = "3.0.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rubysl-cgi>.freeze, ["~> 2.0"])
      s.add_runtime_dependency(%q<rubysl-erb>.freeze, ["~> 2.0"])
      s.add_runtime_dependency(%q<rubysl-singleton>.freeze, ["~> 2.0"])
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.3"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_development_dependency(%q<mspec>.freeze, ["~> 1.5"])
      s.add_development_dependency(%q<rubysl-webrick>.freeze, ["~> 2.0"])
      s.add_development_dependency(%q<rubysl-prettyprint>.freeze, ["~> 2.0"])
    else
      s.add_dependency(%q<rubysl-cgi>.freeze, ["~> 2.0"])
      s.add_dependency(%q<rubysl-erb>.freeze, ["~> 2.0"])
      s.add_dependency(%q<rubysl-singleton>.freeze, ["~> 2.0"])
      s.add_dependency(%q<bundler>.freeze, ["~> 1.3"])
      s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_dependency(%q<mspec>.freeze, ["~> 1.5"])
      s.add_dependency(%q<rubysl-webrick>.freeze, ["~> 2.0"])
      s.add_dependency(%q<rubysl-prettyprint>.freeze, ["~> 2.0"])
    end
  else
    s.add_dependency(%q<rubysl-cgi>.freeze, ["~> 2.0"])
    s.add_dependency(%q<rubysl-erb>.freeze, ["~> 2.0"])
    s.add_dependency(%q<rubysl-singleton>.freeze, ["~> 2.0"])
    s.add_dependency(%q<bundler>.freeze, ["~> 1.3"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_dependency(%q<mspec>.freeze, ["~> 1.5"])
    s.add_dependency(%q<rubysl-webrick>.freeze, ["~> 2.0"])
    s.add_dependency(%q<rubysl-prettyprint>.freeze, ["~> 2.0"])
  end
end

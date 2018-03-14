# -*- encoding: utf-8 -*-
# stub: state_machines 0.5.0 ruby lib

Gem::Specification.new do |s|
  s.name = "state_machines"
  s.version = "0.5.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Abdelkader Boudih", "Aaron Pfeifer"]
  s.date = "2017-06-20"
  s.description = "Adds support for creating state machines for attributes on any Ruby class"
  s.email = ["terminale@gmail.com", "aaron@pluginaweek.org"]
  s.homepage = "https://github.com/state-machines/state_machines"
  s.licenses = ["MIT"]
  s.required_ruby_version = Gem::Requirement.new(">= 2.0.0")
  s.rubygems_version = "2.5.2.1"
  s.summary = "State machines for attributes"

  s.installed_by_version = "2.5.2.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>, [">= 1.7.6"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<minitest>, [">= 5.4"])
    else
      s.add_dependency(%q<bundler>, [">= 1.7.6"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<minitest>, [">= 5.4"])
    end
  else
    s.add_dependency(%q<bundler>, [">= 1.7.6"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<minitest>, [">= 5.4"])
  end
end

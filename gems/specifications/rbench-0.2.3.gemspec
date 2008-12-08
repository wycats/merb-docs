# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{rbench}
  s.version = "0.2.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Yehuda Katz & Sindre Aarsaether"]
  s.autorequire = %q{rbench}
  s.date = %q{2008-06-15}
  s.description = %q{Library for generating nice ruby-benchmarks}
  s.email = %q{post [a] rbench [d] org}
  s.extra_rdoc_files = ["README", "LICENSE", "TODO"]
  s.files = ["README", "LICENSE", "TODO", "spec/rbench_spec.rb", "spec/spec.opts", "spec/spec_helper.rb", "lib/rbench.rb", "lib/rbench/summary.rb", "lib/rbench/runner.rb", "lib/rbench/report.rb", "lib/rbench/group.rb", "lib/rbench/column.rb"]
  s.has_rdoc = true
  s.homepage = %q{http://www.rbench.org}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{Library for generating nice ruby-benchmarks}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end

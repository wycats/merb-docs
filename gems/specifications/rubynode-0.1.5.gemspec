# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{rubynode}
  s.version = "0.1.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Dominik Bathon"]
  s.date = %q{2008-02-13}
  s.email = %q{dbatml@gmx.de}
  s.extensions = ["ext/rubynode_ext/extconf.rb"]
  s.files = ["ext/rubynode_ext", "ext/rubynode_ext/ruby_src", "ext/rubynode_ext/ruby_src/d0efe17fed21c8d9954851abd9dab16fac1e35b8", "ext/rubynode_ext/ruby_src/d0efe17fed21c8d9954851abd9dab16fac1e35b8/gc.c", "ext/rubynode_ext/ruby_src/d0efe17fed21c8d9954851abd9dab16fac1e35b8/eval.c", "ext/rubynode_ext/ruby_src/4bfe0d24de6089aca6af9bf4d690df7a7f481276", "ext/rubynode_ext/ruby_src/4bfe0d24de6089aca6af9bf4d690df7a7f481276/gc.c", "ext/rubynode_ext/ruby_src/4bfe0d24de6089aca6af9bf4d690df7a7f481276/eval.c", "ext/rubynode_ext/ruby_src/061ef3a38d01ac9917e7aaff0bc5ff6be60becf3", "ext/rubynode_ext/ruby_src/061ef3a38d01ac9917e7aaff0bc5ff6be60becf3/gc.c", "ext/rubynode_ext/ruby_src/061ef3a38d01ac9917e7aaff0bc5ff6be60becf3/eval.c", "ext/rubynode_ext/ruby_src/d03d2652e0a6a8ae8bd0575d58f0c093d97d694d", "ext/rubynode_ext/ruby_src/d03d2652e0a6a8ae8bd0575d58f0c093d97d694d/gc.c", "ext/rubynode_ext/ruby_src/d03d2652e0a6a8ae8bd0575d58f0c093d97d694d/eval.c", "ext/rubynode_ext/extconf.rb", "ext/rubynode_ext/rubynode_ext.c", "lib/rubynode.rb", "doc/api.html", "doc/index.html", "doc/style.css", "README", "Changelog"]
  s.homepage = %q{http://rubynode.rubyforge.org/}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{RubyNode is a library that allows read only access to Ruby's internal NODE structure.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end

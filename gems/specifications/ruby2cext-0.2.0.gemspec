# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{ruby2cext}
  s.version = "0.2.0"

  s.required_rubygems_version = nil if s.respond_to? :required_rubygems_version=
  s.authors = ["Dominik Bathon"]
  s.cert_chain = nil
  s.date = %q{2007-06-12}
  s.default_executable = %q{rb2cx}
  s.email = %q{dbatml@gmx.de}
  s.executables = ["rb2cx"]
  s.files = ["bin/rb2cx", "lib/ruby2cext", "lib/ruby2cext/parser.rb", "lib/ruby2cext/error.rb", "lib/ruby2cext/compiler.rb", "lib/ruby2cext/c_function.rb", "lib/ruby2cext/scopes.rb", "lib/ruby2cext/str_to_c_strlit.rb", "lib/ruby2cext/common_node_comp.rb", "lib/ruby2cext/tools.rb", "lib/ruby2cext/eval2c.rb", "lib/ruby2cext/plugins", "lib/ruby2cext/plugins/warnings.rb", "lib/ruby2cext/plugins/builtin_methods.rb", "lib/ruby2cext/plugins/case_optimize.rb", "lib/ruby2cext/plugins/const_cache.rb", "lib/ruby2cext/plugins/require_include.rb", "lib/ruby2cext/plugins/inline_methods.rb", "lib/ruby2cext/version.rb", "lib/ruby2cext/plugin.rb", "testfiles/test.rb", "testfiles/bench.rb", "testfiles/eval2c", "testfiles/eval2c/test_eval2c.rb", "testfiles/vmode_test.rb", "testfiles/warn_test.rb", "doc/eval2c.html", "doc/optimizations.html", "doc/limitations.html", "doc/index.html", "doc/rb2cx.html", "doc/style.css", "README", "Changelog"]
  s.homepage = %q{http://ruby2cext.rubyforge.org/}
  s.require_paths = ["lib"]
  s.required_ruby_version = Gem::Requirement.new("~> 1.8.4")
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{Ruby2CExtension is a Ruby to C extension translator/compiler.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 1

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rubynode>, [">= 0.1.1"])
    else
      s.add_dependency(%q<rubynode>, [">= 0.1.1"])
    end
  else
    s.add_dependency(%q<rubynode>, [">= 0.1.1"])
  end
end

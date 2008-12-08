# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{ruby-prof}
  s.version = "0.7.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Shugo Maeda and Charlie Savage"]
  s.date = %q{2008-11-10}
  s.default_executable = %q{ruby-prof}
  s.description = %q{ruby-prof is a fast code profiler for Ruby. It is a C extension and therefore is many times faster than the standard Ruby profiler. It supports both flat and graph profiles.  For each method, graph profiles show how long the method ran, which methods called it and which  methods it called. RubyProf generate both text and html and can output it to standard out or to a file.}
  s.email = %q{shugo@ruby-lang.org and cfis@savagexi.com}
  s.executables = ["ruby-prof"]
  s.extensions = ["ext/extconf.rb"]
  s.files = ["Rakefile", "README", "LICENSE", "CHANGES", "bin/ruby-prof", "examples/flat.txt", "examples/graph.html", "examples/graph.txt", "ext/extconf.rb", "ext/measure_allocations.h", "ext/measure_cpu_time.h", "ext/measure_gc_runs.h", "ext/measure_gc_time.h", "ext/measure_memory.h", "ext/measure_process_time.h", "ext/measure_wall_time.h", "ext/mingw", "ext/ruby_prof.c", "ext/ruby_prof.h", "ext/vc", "ext/version.h", "ext/mingw/Rakefile", "ext/mingw/build.rake", "ext/vc/ruby_prof.sln", "ext/vc/ruby_prof.vcproj", "lib/ruby-prof", "lib/ruby-prof/abstract_printer.rb", "lib/ruby-prof/call_info.rb", "lib/ruby-prof/call_tree_printer.rb", "lib/ruby-prof/flat_printer.rb", "lib/ruby-prof/graph_html_printer.rb", "lib/ruby-prof/graph_printer.rb", "lib/ruby-prof/method_info.rb", "lib/ruby-prof/task.rb", "lib/ruby-prof/test.rb", "lib/ruby-prof.rb", "lib/unprof.rb", "rails/environment", "rails/environment/profile.rb", "rails/example", "rails/example/example_test.rb", "rails/profile_test_helper.rb", "test/basic_test.rb", "test/duplicate_names_test.rb", "test/exceptions_test.rb", "test/exclude_threads_test.rb", "test/line_number_test.rb", "test/measurement_test.rb", "test/module_test.rb", "test/no_method_class_test.rb", "test/prime.rb", "test/prime_test.rb", "test/printers_test.rb", "test/profile_unit_test.rb", "test/recursive_test.rb", "test/singleton_test.rb", "test/stack_test.rb", "test/start_stop_test.rb", "test/test_suite.rb", "test/thread_test.rb", "test/unique_call_path_test.rb"]
  s.has_rdoc = true
  s.homepage = %q{http://rubyforge.org/projects/ruby-prof/}
  s.require_paths = ["lib"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.8.4")
  s.rubyforge_project = %q{ruby-prof}
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{Fast Ruby profiler}
  s.test_files = ["test/test_suite.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end

# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{rdoc}
  s.version = "2.2.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Eric Hodel", "Dave Thomas", "Phil Hagelberg", "Tony Strauss"]
  s.date = %q{2008-09-23}
  s.description = %q{RDoc is an application that produces documentation for one or more Ruby source files.  RDoc includes the +rdoc+ and +ri+ tools for generating and displaying online documentation.  At this point in time, RDoc 2.x is a work in progress and may incur further API changes beyond what has been made to the RDoc 1.0.1.  Command-line tools are largely unaffected, but internal APIs may shift rapidly.  See RDoc for a description of RDoc's markup and basic use.}
  s.email = ["drbrain@segment7.net", "", "technomancy@gmail.com", "tony.strauss@designingpatterns.com"]
  s.executables = ["rdoc", "ri"]
  s.extra_rdoc_files = ["History.txt", "Manifest.txt", "README.txt", "RI.txt"]
  s.files = ["History.txt", "Manifest.txt", "README.txt", "Rakefile", "RI.txt", "bin/rdoc", "bin/ri", "lib/rdoc.rb", "lib/rdoc/code_objects.rb", "lib/rdoc/diagram.rb", "lib/rdoc/dot.rb", "lib/rdoc/generator.rb", "lib/rdoc/generator/chm.rb", "lib/rdoc/generator/chm/chm.rb", "lib/rdoc/generator/html.rb", "lib/rdoc/generator/html/common.rb", "lib/rdoc/generator/html/frameless.rb", "lib/rdoc/generator/html/hefss.rb", "lib/rdoc/generator/html/html.rb", "lib/rdoc/generator/html/kilmer.rb", "lib/rdoc/generator/html/kilmerfactory.rb", "lib/rdoc/generator/html/one_page_html.rb", "lib/rdoc/generator/ri.rb", "lib/rdoc/generator/texinfo.rb", "lib/rdoc/generator/texinfo/class.texinfo.erb", "lib/rdoc/generator/texinfo/file.texinfo.erb", "lib/rdoc/generator/texinfo/method.texinfo.erb", "lib/rdoc/generator/texinfo/texinfo.erb", "lib/rdoc/generator/xml.rb", "lib/rdoc/generator/xml/rdf.rb", "lib/rdoc/generator/xml/xml.rb", "lib/rdoc/known_classes.rb", "lib/rdoc/markup.rb", "lib/rdoc/markup/attribute_manager.rb", "lib/rdoc/markup/formatter.rb", "lib/rdoc/markup/fragments.rb", "lib/rdoc/markup/inline.rb", "lib/rdoc/markup/lines.rb", "lib/rdoc/markup/preprocess.rb", "lib/rdoc/markup/to_flow.rb", "lib/rdoc/markup/to_html.rb", "lib/rdoc/markup/to_html_crossref.rb", "lib/rdoc/markup/to_latex.rb", "lib/rdoc/markup/to_test.rb", "lib/rdoc/markup/to_texinfo.rb", "lib/rdoc/options.rb", "lib/rdoc/parser.rb", "lib/rdoc/parser/c.rb", "lib/rdoc/parser/f95.rb", "lib/rdoc/parser/perl.rb", "lib/rdoc/parser/ruby.rb", "lib/rdoc/parser/simple.rb", "lib/rdoc/rdoc.rb", "lib/rdoc/ri.rb", "lib/rdoc/ri/cache.rb", "lib/rdoc/ri/descriptions.rb", "lib/rdoc/ri/display.rb", "lib/rdoc/ri/driver.rb", "lib/rdoc/ri/formatter.rb", "lib/rdoc/ri/paths.rb", "lib/rdoc/ri/reader.rb", "lib/rdoc/ri/util.rb", "lib/rdoc/ri/writer.rb", "lib/rdoc/stats.rb", "lib/rdoc/template.rb", "lib/rdoc/tokenstream.rb", "test/binary.dat", "test/rdoc_markup_to_html_crossref_reference.rb", "test/test_rdoc_info_formatting.rb", "test/test_rdoc_info_sections.rb", "test/test_rdoc_markup.rb", "test/test_rdoc_markup_attribute_manager.rb", "test/test_rdoc_markup_to_html.rb", "test/test_rdoc_markup_to_html_crossref.rb", "test/test_rdoc_parser.rb", "test/test_rdoc_parser_c.rb", "test/test_rdoc_parser_perl.rb", "test/test_rdoc_parser_ruby.rb", "test/test_rdoc_ri_attribute_formatter.rb", "test/test_rdoc_ri_default_display.rb", "test/test_rdoc_ri_driver.rb", "test/test_rdoc_ri_formatter.rb", "test/test_rdoc_ri_overstrike_formatter.rb", "test/test_attribute_manager.rb"]
  s.has_rdoc = true
  s.homepage = %q{Project Page: http://rubyforge.org/projects/rdoc/}
  s.rdoc_options = ["--main", "README.txt"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{rdoc}
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{RDoc is an application that produces documentation for one or more Ruby source files}
  s.test_files = ["test/test_rdoc_parser.rb", "test/test_rdoc_markup_to_html.rb", "test/test_rdoc_ri_default_display.rb", "test/test_rdoc_markup_to_html_crossref.rb", "test/test_rdoc_info_sections.rb", "test/test_rdoc_ri_formatter.rb", "test/test_rdoc_parser_perl.rb", "test/test_rdoc_ri_driver.rb", "test/test_attribute_manager.rb", "test/test_rdoc_parser_ruby.rb", "test/test_rdoc_ri_overstrike_formatter.rb", "test/test_rdoc_markup_attribute_manager.rb", "test/test_rdoc_info_formatting.rb", "test/test_rdoc_parser_c.rb", "test/test_rdoc_ri_attribute_formatter.rb", "test/test_rdoc_markup.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<hoe>, [">= 1.7.0"])
    else
      s.add_dependency(%q<hoe>, [">= 1.7.0"])
    end
  else
    s.add_dependency(%q<hoe>, [">= 1.7.0"])
  end
end

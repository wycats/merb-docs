# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{thin-turbo}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Marc-Andre Cournoyer"]
  s.date = %q{2008-09-18}
  s.description = %q{New backend for Thin web server}
  s.email = %q{macournoyer@gmail.com}
  s.extensions = ["ext/thin_backend/extconf.rb"]
  s.files = ["COPYING", "README", "Rakefile", "lib/rack", "lib/rack/adapter", "lib/rack/adapter/threaded_rails.rb", "lib/thin", "lib/thin/backends", "lib/thin/backends/turbo.rb", "lib/thin-turbo.rb", "test/array_test.c", "test/buffer_test.c", "test/Makefile", "test/palloc_test.c", "test/queue_test.c", "test/status_test.c", "test/test.h", "tasks/ext.rake", "tasks/gem.rake", "ext/libev/ev.h", "ext/libev/ev_vars.h", "ext/libev/ev_wrap.h", "ext/libev/event.h", "ext/thin_backend/buffer.h", "ext/thin_backend/ext_help.h", "ext/thin_backend/palloc.h", "ext/thin_backend/parser.h", "ext/thin_backend/queue.h", "ext/thin_backend/status.h", "ext/thin_backend/thin.h", "ext/libev/ev.c", "ext/libev/ev_epoll.c", "ext/libev/ev_kqueue.c", "ext/libev/ev_poll.c", "ext/libev/ev_port.c", "ext/libev/ev_select.c", "ext/libev/ev_win32.c", "ext/libev/event.c", "ext/thin_backend/backend.c", "ext/thin_backend/buffer.c", "ext/thin_backend/connection.c", "ext/thin_backend/init.c", "ext/thin_backend/palloc.c", "ext/thin_backend/parser.c", "ext/thin_backend/parser_callbacks.c", "ext/thin_backend/queue.c", "ext/thin_backend/request.c", "ext/thin_backend/response.c", "ext/thin_backend/extconf.rb", "ext/thin_backend/parser.rl"]
  s.homepage = %q{http://code.macournoyer.com/thin/}
  s.require_paths = ["lib"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.8.5")
  s.rubyforge_project = %q{thin}
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{New backend for Thin web server}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<thin>, [">= 0.8.0"])
    else
      s.add_dependency(%q<thin>, [">= 0.8.0"])
    end
  else
    s.add_dependency(%q<thin>, [">= 0.8.0"])
  end
end

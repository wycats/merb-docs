require "ruby-debug"

class Application < Merb::Controller
  def layout_partial(name, &blk)
    throw_content(:for_layout, capture(&blk))
    partial(name)
  end
end
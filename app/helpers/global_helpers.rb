module Merb
  module GlobalHelpers
    # helpers defined here available to all views.  
    
    def nav_link(txt, klass)
      link_to(txt, "/klasses/#{klass}", 
        :class => klass == @klass.name ? "selected" : nil)
    end
  end
end

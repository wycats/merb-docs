class Klasses < Application
  cache :index, :show

  # ...and remember, everything returned from an action
  # goes to the client...
  def index
    @klasses = Doc::Class.all(:types => ["Class"])
    display @klasses
  end
  
  def show(name)
    @klass = Doc::Class.get(name)
    @methods = @klass.all_methods
    display @klass
  end
  
end

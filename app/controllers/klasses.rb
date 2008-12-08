class Klasses < Application
  # cache :index, :show

  # ...and remember, everything returned from an action
  # goes to the client...
  def index
    show("Kernel")
  end
  
  def all
    @klasses = Doc::Class.all
    display @klasses, :index
  end
  
  def show(name)
    @klass = Doc::Class.get(name)
    @methods = @klass.all_methods
    display @klass, :show
  end
  
end

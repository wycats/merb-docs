module Doc
  class Class
    include Describe

    ADDED = {
      "Merb::Router::Behavior" => ["Merb::Router::Resources"],
      "Merb::Controller" => 
        %w(Merb::CookiesMixin Merb::SessionMixin)
    }

    def self.any?(opts = {})
      !!get_all(opts).first
    end
  
    def self.all(opts = {})
      get_all(opts).map {|k| new(k, opts[:api] || "public")}
    end
    
    private
    def self.get_all(opts)
      opts[:api] ||= "public"
      opts[:types] ||= %w(Class Module)
      search = opts[:name] ? "[name='#{opts[:name]}']" : ""
      search << (opts[:api] ? ":contains(':api: #{opts[:api]}')" : "")
      search = opts[:types].map {|name| "#{name}#{search}"}.join(", ")
      puts search
      ret = DOC_XML.css(search)
    end
  
    public
    def self.get(name, api = "public")
      node = get_all(:name => name, :api => api).first
      node && new(node, api)
    end
  
    attr_reader :api, :included_modules, :name, :node, 
      :description, :superclass
      
    def initialize(node, api)
      @node, @api, @name = node, api, node["name"]
      desc = node.xpath("./description")[0]
      @description = desc && tweak_links(desc.text)
      
      superclass = node.css("superclass a").first
      @superclass = superclass && superclass.text
      @superclass = nil if @name == @superclass
      
      @included_modules = 
        node.css("included-module-list included-module").
             map {|mod| mod.get_attribute("name")}
    end
  
    def inspect
      "#<Doc Class: #{@node.get_attribute("name")} api=#{@api.inspect}>"
    end
  
    def ancestors
      @included_modules + Array(@superclass) + Array(ADDED[@name])
    end
  
    def method_list
      lists = @node.css("method-list")
      search = @api ? "method:contains(':api: #{@api}')" : "method"
      lists.inject({}) do |accum, list|
        method_list = list.css(search).map {|meth| Doc::Method.new(meth, self.name) }
        (accum[list.get_attribute("category")] ||= []).push *method_list
        accum
      end
    end
    
    def all_methods
      ancestors.inject(method_list) do |accum, mod|
        result = Doc::Class.get(mod)
        result && result.all_methods.each do |k,v|
          accum[k].push *v
        end
        accum
      end
    end

  end
end

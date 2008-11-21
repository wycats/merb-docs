module Doc
  class Method
    include Describe
    
    attr_reader :name, :type, :category, :from,
      :ident, :params, :description, :source_code
      
    def self.by_id(id)
      new(DOC_XML.css("[id='#{id}']")[0])
    end
      
    def initialize(node, from = nil)
      @node = node
      @from = klass
      attrs = @node.attributes
      @name = attrs["name"]
      @type = attrs["type"]
      @category = attrs["category"]
      @ident = attrs["id"]
      @params = @node.css("parameters").first.text
      @source_code = 
        @node.css("source-code-listing").first.to_s.
        match(/<source-code-listing>(.*)<\/source-code-listing>/m)[1].strip
    end
    
    def klass
      @node.xpath("../../..")[0].attributes["name"]
    end
    
    def inspect
      "#<#{name.inspect} params=#{@params.inspect} from=#{@from.inspect}>"
    end
    
    def description
      @description ||= begin
        desc = @node.css("description").text
        tweak_links(desc)
      end
    end
    
  end
end
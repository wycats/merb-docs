module Doc
  module Describe
    def tweak_links(desc)
      desc = Nokogiri::HTML(desc)
      desc.css("a[href]").each do |node|
        href = node["href"]
        if href =~ /#(M\d{6})/
          node["href"] = "/klasses/#{Doc::Method.by_id($1).klass}##{$1}"
        elsif href =~ /#(.*)/ && Doc::Class.any?(:name => $1)
          node["href"] = "/klasses/#{$1}"
        else
          txt = Nokogiri::XML::Text.new(node.inner_html, desc)
          node.replace(txt)
        end
      end
      desc.css("body")[0].inner_html
    end
  end
end
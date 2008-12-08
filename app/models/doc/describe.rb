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
      tweak_pres(desc)
      ret = desc.css("body")[0].inner_html
    end
    
    def tweak_pres(desc)
      desc.css("pre").each do |pre|
        html = pre.inner_html
        lines = html.split("\n").reject {|x| x.empty? }
        min = lines.inject(1000) do |acc,line|
          line =~ /^\s*/
          $0.size < acc ? $0.size : acc
        end
        
        lines.map! do |line|
          line.gsub!(/^\s{#{min}}/, "")
          line
        end
        pre.content = lines.join("\n")
      end
    end
  end
end
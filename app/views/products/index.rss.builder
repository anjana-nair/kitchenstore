



xml.instruct! :xml, :version => "1.0" 
xml.rss :version => "2.0" do
  xml.channel do
    xml.name "Your Blog Title"
    xml.description "A blog about software and chocolate"

    for product in @products
      xml.item do
        xml.name product.name
        xml.description product.description
        xml.price product.price
        xml.created_at product.created_at.to_s(:rfc822)
      end
    end
  end
end



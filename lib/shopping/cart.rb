require "shopping/cart/version"

module Shopping
  module Cart
    class Error < StandardError; end
   

    class ShopingCart
     
      @@products = { Laptop: 19000 , Mobile: 45000 , Sound: 12000, Tv: 100500 }
      
      @@store = []

      def initialize(name,price)
        @name = name
        @price = price
        
      end
       
       
        def showAllProduct
           
            @@products.each do | item , price |
              puts "#{item}           #{price}"
              end
        end
        
        
        

      end

cart1 = Item.new("HDMI",2000)
cart1.showAllProduct

    







  end
end





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



        def selectProduct

          loop do
          puts " welcome to please select option 1] Display product  2] Add to cart 3] more funtion4] would to like to contu ?"
          
          @@response = gets.chomp.to_i
          
          case @@response
          when 1
            @@itemNames.each do | i , pr|
                puts "#{i}   #{pr}"
          end
          when 2
              puts "Which prduct would you like to buy?"
              @@product = gets.chomp
               puts "how many qunaintyy?"
             @@quntity = gets.chomp.to_i
              
              
              def  total(info)
                total = info.fetch(@@product) * @@quntity
                puts total
              end
              total(@@itemNames )
          when 3
            puts "discount"
          end  
      
             puts " would u like to contune Y/N"
              wish = gets.chomp 
              if  wish == 'Y' || wish == "y"
              end 
       end 
     
     end
  end

    cart1 = Item.new("HDMI",2000)
    cart1.showAllProduct
    cart1.selectProduct
    
  end
end





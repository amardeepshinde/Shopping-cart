require_relative 'addtocart'
require_relative 'showcart'
require_relative 'orderitem'
require_relative 'showcart'
require_relative 'invokers'
require_relative 'bufferinvoker'
require_relative 'item'
require_relative 'bag'


module Inputhandle

  
  def Inputhandle.parse
    products = { "aaa" => 1000 , "bbb" => 3000}

    products.each do |aa , bb|
      puts "#{aa}  #{bb} "
    end
 @invoker = BufferInvoker.new()
    
    begin
      puts "Please select below opetion with product add , order , show  "
      
      input = gets.chomp.split(' ')
      choice = input[0]
      args = input[1..input.length]
  
      case choice
       
      when "add"
        exe = AddtoCart.new(args[0], args[1].to_i)
        @invoker.do(exe)
      
      when "show"
        exe  = ShowCart.new()
        @invoker.do(exe)
      

      when "order"
        bag = Bag.new
        items = []
        amounts = []

        args.each { |ord|
          if /\A\d+\z/.match(ord)
            amounts << ord
          else
            items << ord
          end
        }

        for i in 0..items.length-1
          bag.add(amounts.at(i).to_i, items.at(i))
        end

        exe = OrderItem.new(bag)
        @invoker.do(exe)



      
      else
        puts "invalid selection"
      end
      
    
      puts Item.instance.print
    end until command == "exit"
    
    
  end
end

Inputhandle::parse

require_relative 'addtocart'
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
      )
      else
        puts "invalid selection"
      end
      
    
      puts Item.instance.print
    end until command == "exit"
    
    
  end
end

Inputhandle::parse

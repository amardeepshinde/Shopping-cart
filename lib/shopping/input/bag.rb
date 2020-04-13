require_relative 'exceptions'

class Bag
  include Enumerable
  def initialize
    @bag = Hash.new
  end

  def has?(amount, item)
    @bag.has_key?(item) and @bag[item] >= amount
  end

  
  def add(amount, item)
   
    
    if @bag.has_key?(item) 
     @bag[item] += amount
    else
     @bag[item] = amount
    end
  end

  
  def each(&block)
    @bag.each(&block)
  end

  def print
    product = []
    price = []
    if @bag.empty?
      product << "Bag is empty"
    else
      buffer << "Cart items"
      @bag.each do |item, amount| 
        product << "  #{item}: #{amount}"
        price << "#{amount}"
      
      end 
     
    end
    
    end
    product
  end
end


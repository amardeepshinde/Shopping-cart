require_relative 'bag'
require 'singleton'

class Item
  include Singleton

  @bag = Bag.new  
  
  def initialize()
    @bag = Bag.new
  end

  def add(amount, item)
    @bag.add(amount, item)
  end


  def print
    @bag.print
  end

end

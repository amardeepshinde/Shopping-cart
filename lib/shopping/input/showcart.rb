require_relative 'cart'
require_relative 'item'

class ShowCart < Cart

  def initialize()
  end

  def execute()
    puts Item.instance.print
  end

  
end

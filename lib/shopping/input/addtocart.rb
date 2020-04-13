require_relative 'cart'
require_relative 'item'


class AddtoCart < Cart
  def initialize(item, amount)
    @item = item
    @amount = amount
  end

  def execute()
    Item.instance.add(@amount, @item)
    
  end


end

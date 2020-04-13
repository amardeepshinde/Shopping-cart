require_relative 'cart'
require_relative 'inputbuffer'
require_relative 'item'

class OrderItem < Cart

  @buffer = InputBuffer.instance
  def initialize(order)
    @order = order
  end

  def execute()
    Item.instance.remove_all(@order)
  end

  def unexecute()
    @buffer.remove(@n)
  end
end

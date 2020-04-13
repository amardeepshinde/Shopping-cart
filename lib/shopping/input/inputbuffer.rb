require 'singleton'

class InputBuffer
  include Singleton
  @buffer = []
  def initialize()
    @buffer = []
  end

  def insert(command, *args)
    item = Hash.new
    item[command] = args
    @buffer << item
  end

  def string()
    return @buffer.join( " " )
  end


  end
end


class Invoker
  def initialize()
    @queue = []
  end

  def do(x)
    x.execute()
    @queue << x
  end


end


require_relative 'invokers'


class BufferInvoker < Invoker

  @buffer = InputBuffer.instance
   
    def do(x)
        super(x)
       
    end


end

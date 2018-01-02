class Stack
    def initialize
      @items = []
    end

    def arithmetic_operation
        if @items.size >= 2
            val = yield(@items.pop, @items.pop)
            push(val)
        else
            raise 'Need 2 elements'
        end
    end

    def push(item=nil)
        @items.push(item)
        print "#{@items}\n"
    end

    def pop
        if @items.size
            print "#{@items.pop}, #{@items}\n"
        else
            raise 'Nothing to push'
        end
    end

    def add
        arithmetic_operation { |first, second| first + second }
    end

    def sub
        arithmetic_operation { |first, second| first - second }
    end

    def mul
        arithmetic_operation { |first, second| first * second }
    end

    def div
        arithmetic_operation { |first, second| first / second }
    end
end
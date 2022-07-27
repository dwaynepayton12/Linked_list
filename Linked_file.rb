class Node

    def initialize(value, next_node = nil)
        @next_node = next_node
        @value = value
    end

    attr_accessor :value
    attr_accessor :next_node

    def set_pointer(node)
        @next_node = node
    end

    def display
        p @next_node
        p @value
    end

    def display_value 
         @value
    end

    def display_pointer
        @next_node
    end

end

class LinkedList

    def initialize(data)
        @head = Node.new(data)
        @current_node = @head
        @temp_node = nil
        @temp_node2 = nil
        @count = 1
    end

    def append(value)
        @previous_node = @current_node
        @current_node = Node.new(value)
        @previous_node.set_pointer(@current_node)
        @count += 1
    end

    def prepend(value)
        @temp_node = @head
        @head = Node.new(value)
        @head.set_pointer(@temp_node)
        @count += 1
      end

    def display
        @head.display
    end


    def display_at(index)
        i = 0
        @temp_node = @head
        while i < index
          @temp_node2 = @temp_node.display_pointer
          @temp_node = @temp_node2
          i += 1
        end
        @temp_node
      end

      def pop
    @current_node = @previous_node
    @current_node.set_pointer(nil)
    @count -= 1
    @previous_node = display_at(@count - 2)
  end

    def contains?(value)
        i = 0
        @temp_node = @head
        while i < @count 
            if @temp_node.display_pointer == value 
                return true
            else
                @temp_node2 == @temp_node.display_pointer
                @temp_node == @temp_node2
                i += 1
            end
        end 
            false
        end

def find(value)
    i = 0
    @temp_node = @head
        while i < @count 
            if @temp_node.display_pointer == value 
                return true
            else
                @temp_node2 == @temp_node.display_pointer
                @temp_node == @temp_node2
                i += 1
            end
        end 
            nil
        end

     def to_s 
        i = 0
        @temp_node = @head
        while i < @count 
            print "#{@temp_node.display_value} -> "
            @temp_node2 == @temp_node.display_pointer
            @temp_node == @temp_node2
            i += 1
        end
        p nil
    end

    def insert_at(index, value)
        i = 0
        @temp_node = @head
        while i < (index - 1)
          @temp_node2 = @temp_node.display_pointer
          @temp_node = @temp_node2
          i += 1
        end
        @previous_node = @temp_node
        @current_node = Node.new(value)
        @current_node.set_pointer(@previous_node.display_pointer)
        @previous_node.set_pointer(@current_node)
        @count += 1
      end

      
      def remove_at(index)
        i = 0
        @temp_node = @head
        while i < (index - 1)
          @temp_node2 = @temp_node.display_pointer
          @temp_node = @temp_node2
          i += 1
        end
        @temp_node2 = @temp_node.display_pointer
        @temp_node.set_pointer(@temp_node2.display_pointer)
        @count -= 1
      end

  def display_count
    p "current number of elements: #{@count}"
  end

  def display_head
    p "current tail node is: #{@current_node.display_value}"
  end

end



list = LinkedList.new(25)

list.display

list.append(30)

list.display

list.append(35)

list.display

list.append(40)

list.display

list.append(45)

list.display

list.append(50)

list.display

list.append(60)

list.display

list.prepend(22)

list.display

list.display_count

list.display_head

p list.display_at(2)

p list.display_at(4)

list.pop

list.display

list.display_count

list.pop

list.display

list.display_count

p list.contains?(45)

p list.contains?(47)

p list.find(45)

p list.find(47)

list.to_s

list.insert_at(3, 66)

list.display

list.remove_at(3)

list.display

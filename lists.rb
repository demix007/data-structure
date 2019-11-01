=begin

Create your own LinkedList  class for storing integers which should include two methods:  

  * add(number) - Add a new Node to the end of the list with a value of number. Nothing needs to be returned. 
  * get(index) - Return the value of the Node at position `index` in the List. 
    
=end

class Node
  attr_accessor :value, :next_node
  
  def initialize(value, next_node = nil)
	  @value = value
    @next_node = next_node
  end
end

class LinkedList
  #setup head and tail

  def add(number)
    # your code here
    new_node = Node.new(number)
    
    if @head.nil?
      @head = new_node
      @tail = new_node
    else
      @tail.next_node = new_node
      @tail = new_node
    end
  end

  def get(index)
    # your code here
    current_node = @head

    while index > 0 && current_node
      current_node = current_node.next_node
      index -= 1
    end
    current_node.value
  end
end

list = LinkedList.new

list.add(3)
list.add(5)
puts list.get(1)

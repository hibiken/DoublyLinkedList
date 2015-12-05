require_relative 'node'

class LinkedList 
  attr_accessor  :length, :first_node

  def initialize(seed_data = [])
    @length = 0
    @first_node = nil
    unless seed_data.empty?
      seed_data.each do |data|
        push(data)
      end
    end
  end

  def empty?
    @length == 0
  end

  def push(data)
    if empty?
      add_first_node(data)
    else
      append_to_existing_list(data)
    end
  end

  private

    def add_first_node(data)
      new_node = Node.new(nil, data, nil)
      new_node.prev_node = new_node
      new_node.next_node = new_node
      @first_node = new_node
      @length += 1
    end

    def append_to_existing_list(data)
      new_node = Node.new(@first_node.prev_node, data, @first_node)
      # Update the reference of the first_node and previously last node
      @first_node.prev_node = new_node
      new_node.prev_node.next_node = new_node
      @length += 1
    end
end


if __FILE__ == $0
  @my_list = LinkedList.new([1])
  puts @my_list
end
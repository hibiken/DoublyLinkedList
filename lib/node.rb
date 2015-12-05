class Node
  attr_accessor :prev_node, :data, :next_node 

  def initialize(prev_node, data, next_node)
    @prev_node = prev_node
    @data = data
    @next_node = next_node
  end

end
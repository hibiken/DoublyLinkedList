require 'node'

describe Node do
  before :each do
    @node1 = Node.new(nil, 1, nil)
    @node2 = Node.new(@node1, 2, nil)
    @node3 = Node.new(@node2, 3, @node1)

    @node1.prev_node = @node3
    @node1.next_node = @node2
    @node2.next_node = @node3
  end
  
  it "holds data" do
    expect(@node1.data).to eq(1)
  end

  it "holds reference to previous node" do
    expect(@node2.prev_node).to eq(@node1)
    expect(@node3.prev_node).to eq(@node2)
    expect(@node1.prev_node).to eq(@node3)
  end

  it "holds reference to next node" do
    expect(@node1.next_node).to eq(@node2)
    expect(@node2.next_node).to eq(@node3)
    expect(@node3.next_node).to eq(@node1)
  end
end
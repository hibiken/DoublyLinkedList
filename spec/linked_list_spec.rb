require 'linked_list'
require 'node'

describe LinkedList do

  before :each do
    @linked_list = LinkedList.new([1,2,3])
  end
  
  it "stores length" do
    expect(@linked_list.length).to eq(3)
  end

  it "holds reference to the first node" do
    expect(@linked_list.first_node).to be_instance_of(Node)
  end
end
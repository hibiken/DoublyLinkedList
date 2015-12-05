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

  describe "#push" do
    it "increases length by 1" do
      expect { @linked_list.push(4) }.to change { @linked_list.length}.by(1)
    end

    it "adds a new Node at the end of list" do
      @linked_list.push(4)

      expect(@linked_list.first_node.prev_node).to be_instance_of(Node)
      expect(@linked_list.first_node.prev_node.data).to eq(4)
    end
  end

  describe "#unshift" do
    it "increases length by 1" do
      expect { @linked_list.unshift(0) }.to change { @linked_list.length }.by(1)
    end

    it "adds a new Node at the front of list" do
      @linked_list.unshift(0)

      expect(@linked_list.first_node).to be_instance_of(Node)
      expect(@linked_list.first_node.data).to eq(0)
    end
  end
end
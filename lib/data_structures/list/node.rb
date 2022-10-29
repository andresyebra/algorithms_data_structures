# frozen_string_literal: true

# Class to handle nodes
class Node
  attr_accessor :data, :next_node

  # Method to initialize the node instance.
  # @param data [Object] default: nil
  # @param next_node [Node] default: nil
  # @return [self]
  def initialize(data: nil, next_node: nil)
    @data = data
    @next_node = next_node
  end
end

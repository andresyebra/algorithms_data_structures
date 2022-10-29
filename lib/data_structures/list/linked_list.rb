# frozen_string_literal: true

require 'byebug'

module DataStructures
  module List
    # Class to handle linked list.
    class LinkedList
      attr_accessor :head, :tail

      # Method to initialize the linked list.
      # @return [void]
      def initialize
        @head = nil
        @tail = nil
        @length = 0
      end

      # Method to add value to linked list.
      # @param value [String, Integer, Object]
      # @return [void]
      def push(value)
        # Validate if value to add is nil.
        raise ArgumentError, 'No value received' if value.nil?

        # First crete a new node object
        new_node = Node.new(data: value)

        # Second validate if there is a value in linked list
        if head.nil?
          @head = new_node
          @length += 1
          return head
        end

        # Third iterate the all nodes on the list and set the new value to last -> next node
        current_node = head

        current_node = current_node.next_node while current_node.next_node

        current_node.next_node = new_node
        @tail = current_node.next_node
        @length += 1
      end

      # Method to add value to linked list.
      # @param value [String, Integer, Object]
      # @return [void]
      def <<(value)
        push(value)
      end

      # Method to find a value on a linked list.
      # @param value [String, Integer, Object]
      # @return [void]
      def find(value)
        # First validate if the list has at least one value
        return if head.nil?

        # Second validate if the current node is equal to the value to find
        current_node = head
        return current_node if current_node.data == value

        # Third iterate the all nodes on the list until find the value
        while current_node.next_node
          current_node = current_node.next_node
          return current_node if current_node.data == value
        end

        nil
      end

      # Method to remove the last value from a list.
      # @return [void]
      def pop
        # First validate if the list has at least one value
        return if head.nil?

        # Second validate there is a one value on the list.
        current_node = head
        if current_node.next_node.nil?
          @head = nil
          return current_node
        end

        previous_node = current_node.next_node

        # Iterate the all nodes on the list until find the value
        while current_node.next_node
          previous_node = current_node
          current_node = current_node.next_node
        end

        previous_node.next_node = nil
        @tail = previous_node
        @length -= 1
        current_node.data
      end

      # Method to remove the first value from a list.
      # @return [void]
      def shift
        # First validate if the list has at least one value
        return if head.nil?

        # Second validate there is a one value on the list.
        current_node = head
        if current_node.next_node.nil?
          @head = nil
          return current_node
        end

        new_head = current_node.next_node
        @head.next_node = nil
        @head = new_head

        current_node.data
      end

      # Method to do return first value of list.
      # @return [void]
      def first
        return if head.nil?

        head&.data
      end

      # Method to do return last value of list.
      # @return [void]
      def last
        return if tail.nil?

        tail&.data
      end

      # Method to inspect a list.
      # @return [String]
      def inspect
        values = []

        current_node = head
        while current_node
          values << current_node.data if current_node
          current_node = current_node.next_node
        end

        klass = self.class.to_s.split('::')[-1]
        "#<#{klass} count=#{size}, values=[#{values.join(', ')}]>"
      end

      # Method to return the number of values on a list.
      # @return [Integer]
      def size = length

      def solution(inputString)
        return true if inputString == inputString.reverse

        chars = inputString.split("")
        result = chars.each_with_object({}) do |char, result|
          if result[char]
            result[char] += 1
          else
            result.store(char, 1)
          end
        end

        result.values.select(&:odd?) < 1
      end

      alias count size

      private

      attr_accessor :length
    end
  end
end

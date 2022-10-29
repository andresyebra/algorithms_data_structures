# frozen_string_literal: true

module SortingAlgorithms
  module Bubble
    # Class to handle bubble sort.
    class BubbleSort
      # Method to initialize the bubble.
      # @param array [Array<String, Integer, Object>]
      # @return [self]
      def initialize(*array)
        raise ArgumentError, 'No values received' if array.empty?

        @array = array
      end

      # Method to sort values.
      # @return [void]
      def sort # rubocop:disable Metrics/AbcSize
        length = array.size
        return array if length <= 1

        loop do
          # we need to create a variable that will be checked so that we don't run into an infinite loop scenario.
          swap = false

          # subtract one because Ruby arrays are zero-index based
          (length - 1).times do |index|
            current_value = array[index]
            next_value = array[index + 1]

            next unless current_value > next_value

            array[index] = next_value
            array[index + 1] = current_value
            swap = true
          end

          break unless swap
        end

        array
      end

      # Method to sort values.
      # @return [void]
      def sort! # rubocop:disable Metrics/AbcSize
        (0..array.size).each do |index|
          (index + 1..array.size - 1).each do |j|
            array[index], array[j] = array[j], array[index] if array[index] > array[j]
          end
        end

        array
      end

      private

      attr_accessor :array
    end
  end
end

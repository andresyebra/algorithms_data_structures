

module SearchAlgorithms
module Binary
  class BinarySearch
    # @param array [Array<Object>]
    # @return [self]
    def initialize(*array)
      raise ArgumentError, 'No values received' if array.empty? || array.nil?

      @array = array
      @target = target
    end

    # @param value [Integer]
    # @return [Integer]
    def search(value)
      raise ArgumentError, 'No values received' if value.nil?

      @target = value

      first = 0
      last = array.size - 1

      while first <= last
        middle = ( first + last ) / 2

        if array[middle] == target
          return target
        elsif array[middle] < target
          first = middle + 1
        else
          last = middle - 1
        end
      end
    end

    private
      attr_accessor :array, :target
  end
end
end
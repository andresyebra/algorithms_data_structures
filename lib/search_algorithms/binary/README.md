# Binary Search


**Binary Search** is a searching algorithm used in sorted array by repeatedly dividing the search 
interval in half.

**Binary Search** has a worst-case and average performance `O(log N)` time complexity running time. 

### Usage

Create a instance of `BinarySearch` class:

    binary = SearchAlgorithms::Binary::BinarySearch.new(1, 2, 3, 4, 5, 6, 7, 8, 9 , 10)
    binary.search(4) #=>4


### Test

To execute test run in console:

    rspec spec/searching_algorithms/binary/binary_search_spec.rb

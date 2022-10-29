# Bubble Sort


**Bubble Sort** is a sorting algorithm that checks and swap elements if they are not
in the right order.

**Bubble Sort** has a worst-case and average performance `O(n^2)` quadratic
time complexity running time. 

### Usage

Create a instance of `BubbleSort` class:

    bubble = SortingAlgorithms::Bubble::BubbleSort.new(3, 1, 5, 6, 4, 2)
    bubble.sort #=> [1, 2, 3, 4, 5, 6]


### Test

To execute test run in console:

    spec/sorting_algorithms/bubble/bubble_sort_spec.rb

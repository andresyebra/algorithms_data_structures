# frozen_string_literal: true

require 'byebug'
require_relative 'lib/data_structures/list/node'
require_relative 'lib/data_structures/list/linked_list'
require_relative 'lib/sorting_algorithms/bubble/bubble_sort'

# byebug

bubble = SortingAlgorithms::Bubble::BubbleSort.new(5, 2, 4, 3, 1)

bubble.sort

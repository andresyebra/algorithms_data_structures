# frozen_string_literal: true

require 'byebug'
require_relative 'lib/data_structures/list/node'
require_relative 'lib/data_structures/list/linked_list'
require_relative 'lib/sorting_algorithms/bubble/bubble_sort'
require_relative 'lib/search_algorithms/binary/binary_search'

binary = SearchAlgorithms::Binary::BinarySearch.new(1, 2, 3, 4, 5, 6, 7, 8, 9 , 10)
puts binary.search(11) #=>4
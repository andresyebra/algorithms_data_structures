# frozen_string_literal: true

require 'rspec'
require_relative '../../../lib/sorting_algorithms/bubble/bubble_sort'

describe SortingAlgorithms::Bubble::BubbleSort do
  let(:bubble) { described_class.new(3, 1, 5, 6, 4, 2) }

  context 'when the array is not sorting' do
    it 'be an instance of bubble sort' do
      expect(bubble).to be_instance_of(SortingAlgorithms::Bubble::BubbleSort)
    end

    it '#sort' do
      expect(bubble.sort).to eq([1, 2, 3, 4, 5, 6])
    end
  end
end

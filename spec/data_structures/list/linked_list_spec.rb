# frozen_string_literal: true

require 'rspec'
require 'byebug'
require_relative '../../../lib/data_structures/list/node'
require_relative '../../../lib/data_structures/list/linked_list'

describe DataStructures::List::LinkedList do
  let(:list) { described_class.new }

  before do
    list.push(1)
    list.push(2)
    list.push(3)
  end

  context 'when linked list is instanced' do
    it 'be a instance of linked list' do
      expect(list).to be_instance_of(DataStructures::List::LinkedList)
    end

    it '#push' do
      list.push(4)

      expect(list.head.data).to eq(1)
      expect(list.tail.data).to eq(4)
    end

    it '#find' do
      expect(list.find(3).data).to eq(3)
      expect(list.find('1')&.data).to be_nil
    end

    it '#pop' do
      expect(list.pop).to eq(3)
    end

    it '#shift' do
      expect(list.shift).to eq(1)
    end

    it '#count' do
      expect(list.count).to eq(3)
    end

    it '#inspect' do
      expect(list.inspect).to eq('#<LinkedList count=3, values=[1, 2, 3]>')
    end
  end
end

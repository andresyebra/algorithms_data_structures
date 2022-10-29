# Linked List


**Linked List** is a data structure where each element is a node containing two pieces of information: 

- Data (For a single linked list).
- Reference to the next piece of data in the list.

**Linked List** has much better performance in managing data. Due it's
dynamically store in memory, linked list can be reorganized, merged and
inserted easily with `O(n)` linear complexity running time.

### Usage

Create a instance of `LinkedList` class: 

    list = DataStructures::List::LinkedList.new
    list.push(1)
    list.puss(2)
    
    list.inpect #=> "<LinkedList count=2, values=[1, 2]>" 
    

### Test

To execute test run in console: 

    spec/data_structures/list/linked_list_spec.rb

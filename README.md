# Linked Lists

In this project, I implemented a LinkedList class that mimics the behavior of a linked list data structure in Ruby. Linked lists offer a flexible way to organize data in a linear sequence, where each element can easily be inserted or removed without reorganizing the entire structure.

## Overview

A linked list is a linear collection of data elements, called nodes, where each node points to the next node by means of a pointer. This structure allows for efficient insertion and removal of elements at any point in the list.

Each node holds a single element of data and a link (or pointer) to the next node in the sequence. A head node is the first node in the list, and a tail node is the last node in the list. The list terminates with a "nil" pointer, indicating the end of the list in Ruby. Here's a basic representation of a linked list:

```css
[ NODE(head) ] -> [ NODE ] -> [ NODE(tail) ] -> nil
```

## Implementation

The implementation uses two classes:

1. `LinkedList` class, which handles the linked list structure, providing methods to work with the list.
2. `Node` class, representing individual elements within the linked list. Each node contains a value and a reference to the next node.

## Linked List Methods

Below are available methods available for the LinkedList class:

- `#append(value)` - Adds a new node containing `value` to the end of the list.
- `#prepend(value)` - Adds a new node containing `value` to the start of the list.
- `#size` - Returns the total number of nodes in the list.
- `#head` - Returns the first node in the list.
- `#tail` - Returns the last node in the list.
- `#at(index)` - Returns the node at the specified index.
- `#pop` - Removes the last element from the list.
- `#contains?(value)` - Returns true if the list contains the given `value`, and false otherwise.
- `#find(value)` - Returns the index of the node containing value, or nil if not found.
  `#to_s` - Represents the LinkedList objects as strings that can be viewed in the console. The format is:

```css
( value ) -> ( value ) -> ( value ) -> nil
```

- `#insert_at(value, index)` - Inserts a new node with the provided `value` at the given index. Returns an error message if index is out of bounds.
- `#remove_at(index)` - Removes the node at the specified `index`. Returns an error message if index is out of bounds.

## Languages

- Ruby

## Getting Started

To use the LinkedList class, you can require the file in your Ruby script:

```ruby
require 'linked_list'

list = LinkedList.new
list.append(3)
list.prepend(2)
puts list.to_s
# Output: ( 2 ) -> ( 3 ) -> nil

```

This example above shows how to create a new linked list, add elements to it, and print the list.

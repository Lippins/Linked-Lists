# frozen_string_literal: true

require './node'

# Handles the actual linked list objects
class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def tail
    # returns the last node in the list
    current_node = @head
    current_node = current_node.next until current_node.next.nil?
    current_node
  end

  def at(index)
    # returns the node at the given index
    current_node = @head
    index.times { |_i| current_node = current_node.next }
    current_node
  end

  def append(value)
    # adds a new node containing value to the end of the list
    if @head.nil?
      @head = Node.new(value)
    else
      current_node = @head
      current_node = current_node.next until current_node.next.nil?
      current_node.next = Node.new(value)
    end
  end

  def prepend(value)
    # adds a new node containing value to the start of the list
    if @head.nil?
      @head = Node.new(value)
    else
      current_head = Node.new(value)
      current_head.next = @head
      @head = current_head
    end
  end

  def size
    # returns the total number of nodes in the list
    counter = 0
    current_node = @head
    until current_node.nil?
      counter += 1
      current_node = current_node.next
    end
    counter
  end

  def pop
    # removes the last element from the list
    return puts 'The list is empty' if @head.nil?

    current_node = @head
    current_node = current_node.next until current_node.next.next.nil?
    popped_node = current_node.next
    current_node.next = nil
    popped_node
  end

  def shift
    # removes the first element from the list
    return puts 'The list is empty' if @head.nil?

    previous_head = @head
    current_head = @head.next
    @head.next = nil
    @head = current_head
    previous_head
  end

  def contains?(value)
    # returns true if the passed in value is in the list and otherwise returns false.
    current_node = @head
    until current_node.nil?
      result = current_node.data == value
      break if result == true

      current_node = current_node.next
    end
    result
  end

  def find(value)
    # returns the index of the node containing value, or nil if not found.
    current_node = @head
    counter = 0
    while current_node
      return counter if current_node.data == value

      current_node = current_node.next
      counter += 1
    end
    'nil'
  end

  def to_s
    # present the linked list as string format: ( value ) -> ( value ) -> ( value ) -> nil
    current_node = @head
    result = ''
    until current_node.nil?
      result += "( #{current_node.data} ) -> "
      current_node = current_node.next
    end
    "#{result}nil"
  end

  def insert_at(value, index)
    # inserts a new node with the provided value at the given index.
    return prepend(value) if index.zero?

    current_node = @head

    (index - 1).times { |_i| current_node = current_node.next }

    following_nodes = current_node.next
    current_node.next = Node.new(value)
    current_node.next.next = following_nodes
  end

  def remove_at(index)
    # removes the node at the given index
    return shift if index.zero?

    current_node = @head
    (index - 1).times { |_i| current_node = current_node.next }
    next_node = current_node.next
    current_node.next = next_node.next
  end
end

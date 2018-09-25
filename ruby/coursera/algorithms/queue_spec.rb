require 'rspec'
require 'rspec/core/source/node'

describe 'Stacks' do
  class Node
    attr_accessor :next
    attr_reader :value

    def initialize(value)
      @value = value
      @next = nil
    end

    def to_s
      "Node with value: #{@value}"
    end
  end

  class QueueBylinkedList
    def initialize
      @head = Node.new(nil)
      @end = Node.new(nil)
    end

    def is_empty?
      return @head.value.nil?
    end

    def enqueue(value)
      oldlast = @end
      @end = Node.new(value)
      if is_empty?
        @head = @end
      else
        oldlast.next = @end
      end
    end

    def dequeue
      old_head = @head.value
      @head = @head.next
      if is_empty?
        @end = nil
      end
      return old_head
    end

    def print
      node = @head
      puts node
      while (node = node.next)
        puts node
      end
    end
  end

  it 'linked_list' do
    list = QueueBylinkedList.new
    list.enqueue(10)
    list.enqueue(20)
    list.enqueue(30)
    list.dequeue
    list.print
  end
end

require 'rspec'

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

  class StacksBylinkedList
    def initialize
      @head = Node.new(nil)
    end

    def is_empty?
      return @head.value.nil?
    end

    def push(value)
      old_first = @head
      @head = Node.new(value)
      @head.next = old_first
    end

    def pop
      old_head = @head.value
      @head = @head.next
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

  it 'Stack' do
    list = StacksBylinkedList.new
    list.push(10)
    list.push(20)
    list.push(30)
    list.pop
    list.print
  end
end

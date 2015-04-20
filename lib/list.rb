require_relative 'node'
require 'pry'
class List
  attr_accessor :head

  def each_node(&block)
    node = head
    while node
      block.call node
      node = node.link
    end
  end

  def add(input)
    current= nil
    if head.nil?
      self.head = Node.new input
    else
      self.each_node do |node|
        current = node if node.link.nil?
      end
      current.link = Node.new input
    end
    self
  end

  def count
    count = 0
    self.each_node do
      count += 1
    end
    count
  end

  def tail
    current = nil
    self.each_node do |node|
      current = node if node.link.nil?
    end
    current.data
  end

  def pop
    current = nil
    self.each_node do |node|
      current = node if node.link.link.nil?
    end
  rescue NoMethodError
    data = current.link.data
    current.link = nil
    data
  end

  def index(input)
    count = 0
    current = nil
    self.each_node do |node|
      current = node if count == i
      count += 1
    end
    current.data rescue nil
  end

  def all_data
    self.each_node do |node|
      puts node.data
    end
  end

  def shuffle
    data = self.head.data
    self.head = self.head.link
    data
  end

  def push(data)
    self.add(self.tail)
    self.each_node do |node|
      node.link.data = node.data
    end
    self.head = Node.new data
  end



  binding.pry
end


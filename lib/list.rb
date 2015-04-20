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

  def add(data)
    current= nil
    if head.nil?
      self.head = Node.new data
    else
      self.each_node do |node|
        current = node if node.link.nil?
      end
      current.link = Node.new data
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

  def index(number)
    count = 0
    current = nil
    self.each_node do |node|
      current = node if count == number
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

  def any?(data)
    answer = false
    self.each_node do |node|
      answer = true if node.data == data
    end
    answer
  end

  def push(data)
    self.add(self.tail)
    current = self.count - 2
    while current >= 0
      node_index(current).data = node_index(current - 1).data
      current -= 1
    end
    rescue NoMethodError
    self.head.data = data
  end

  def insert(data, index)
    self.add(self.tail)
    current = self.count - 2
    while current >= index
      node_index(current).data = node_index(current - 1).data
      current -= 1
    end
    node_index(index).data = data
  end

  def remove(index)
    data = node_index(index).data
    current = index
    until current == self.count
      node_index(current).data = node_index(current + 1).data
      current += 1
    end
    rescue NoMethodError
    self.pop
    data
  end

  private
  def node_index(number)
    count = 0
    current = nil
    self.each_node do |node|
      current = node if count == number
      count += 1
    end
    current rescue nil
  end
  binding.pry
end

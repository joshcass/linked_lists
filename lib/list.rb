require_relative 'node'
require 'pry'
class List
  attr_accessor :head

  def add(data)
    if head == nil
      self.head = Node.new(data)
    else
      self.head.link = Node.new(data)
    end
    self
  end
binding.pry
end


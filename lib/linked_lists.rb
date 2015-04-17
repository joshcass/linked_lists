class Head
  attr_reader :node

  def initialize(node = nil)
    @node = node
  end

end


class Node
  attr_reader :link

  def initialize(link = nil)
    @link = link
  end

end

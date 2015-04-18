class Node
  attr_reader :data
  attr_accessor :link

  def initialize(data = nil)
    @data = data
  end

end

gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/node'

class NodeTest < Minitest::Test

  def test_it_has_a_node
    assert Node.is_a?Class
  end

  def test_initial_node_state_is_nil
    result = Node.new
    assert result.link.nil?
  end

  def test_a_node_can_hold_data
    result = Node.new "a"
    assert_equal "a", result.data
  end

end

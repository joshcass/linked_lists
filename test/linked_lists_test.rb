gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/linked_lists'

class LinkedListTest < Minitest::Test

  def test_it_has_a_head
    assert Head.is_a?Class
  end

  def test_it_has_a_node
    assert Node.is_a?Class
  end

  def test_initial_head_state_is_nil
    result = Head.new
    assert_equal nil, result.node
  end

  def test_initial_node_state_is_nil
    result = Node.new
    assert_equal nil, result.link
  end

  def test_head_can_link_to_a_node
    skip

  end

  def test_a_node_can_link_to_another_node
    skip

  end

  def test_a_node_can_hold_data
    skip

  end

end

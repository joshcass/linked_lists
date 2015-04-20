gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/list'

class LinkedListTest < Minitest::Test

  def test_initial_head_state_is_nil
    result = List.new
    assert result.head.nil?
  end


end

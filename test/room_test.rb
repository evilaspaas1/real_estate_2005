require 'minitest/autorun'
require 'minitest/pride'
require './lib/room'
require "pry"
class RoomTest < Minitest::Test
  def test_it_exists
    room = Room.new(:bedroom, 10, '13')
    assert_instance_of Room, room
  end

  def test_it_has_a_category

    room = Room.new(:bedroom, 10, '13')
    assert_equal :bedroom, room.category
  end

  def test_it_can_get_area
    room = Room.new(:bedroom, 10, '13')
    assert_equal 130, room.area
  end

  def test_is_painted?
    room = Room.new(:bedroom, 10, '13')
    assert_equal false, room.is_painted?
  end

  def test_paint
    room = Room.new(:bedroom, 10, '13')
    assert_equal true, room.paint
  end
end

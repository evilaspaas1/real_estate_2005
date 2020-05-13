require "minitest/autorun"
require "minitest/pride"
require "./lib/room"
require "./lib/house"
require "pry"

class HouseTest < Minitest::Test
  def test_it_exists
    house = House.new(400000, "123 sugar lane")
    assert_instance_of House, house
  end

  def test_it_has_price
    house = House.new(400000, "123 sugar lane")
    assert_equal 400000, house.price
  end

  def test_it_has_address
    house = House.new("$400000", "123 sugar lane")
    assert_equal "123 sugar lane", house.address
  end

  def test_it_has_rooms
    house = House.new("$400000", "123 sugar lane")
    assert_equal [], house.rooms
  end

  def test_it_can_add_room
    house = House.new("$400000", "123 sugar lane")
    room_1 = Room.new(:bedroom, 10, "13")
    room_2 = Room.new(:bedroom, 11, "15")
    assert_equal [room_1, room_2], house.rooms
  end
end

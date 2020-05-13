require "pry"

class House
  attr_reader :price,
              :address,
              :rooms
              :room_1
              :room_2
  def initialize(price, address)
    @price = price
    @address = address
    @rooms = []
  end

  def add_room(room_1, room_2)
    @room_1 = room_1
    @room_2 = room_2
    @rooms << room_1 && room_2
  end
  @rooms
end

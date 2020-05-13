class Room
attr_reader :bedroom
  def initialize(category, length, width)
    @category = category
    @length = 10
    @width = width
    @is_painted = false
  end

  def category
    @category = :bedroom
  end

  def area
    @length * @width.to_i
  end

  def is_painted?
    @is_painted = false
  end

  def paint
    @is_painted = true
  end
end

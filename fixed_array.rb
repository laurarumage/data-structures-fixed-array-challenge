class FixedArray

  def initialize(size = 10)
    @array = Array.new(size)
  end

  def size
    @array.length
  end

  def get(index)
    if index < @array.size && index >= 0
      @array[index]
    else
      raise IndexOutOfBoundsError
    end
  end

  def set(index, value)
    if index < @array.size && index >= 0
      @array[index] = value
    else
      raise IndexOutOfBoundsError
    end
  end

end

class IndexOutOfBoundsError < StandardError; end
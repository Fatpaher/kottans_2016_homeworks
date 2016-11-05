class Fibonacci
  include Enumerable

  def initialize(length)
    @length = length
  end

  def each
    prev = 1
    current = 1
    @length.times do |i|
      if i == 1
        yield 1
      else
        yield current
        current, prev = (current + prev), current
      end
    end
  end
end

require_relative 'my_enumerable'

class MyList
  include MyEnumerable

  def initialize(arr)
    @arr = arr
  end

  def each(&block)
    @arr.each(&block)
  end
end

list = MyList.new([1, 2, 3, 4])
puts(list.all? { |e| e < 5 })
puts(list.all? { |e| e > 5 })
puts(list.any? { |e| e == 2 })
puts(list.any? { |e| e == 5 })
filtered_list = list.filter(&:even?)
puts(filtered_list.inspect(&:even?))

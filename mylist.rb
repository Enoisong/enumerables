require_relative 'MyEnumerable'
 
 class MyList
   include MyEnumerable  

  def initialize(arr)
    @arr = arr
  end
  
  def each
    @arr.each { |item| yield item }
  end
end
 
 
list = MyList.new([1, 2, 3, 4])
puts list.all? { |e| e < 5 }
puts list.all? { |e| e > 5 }
puts list.any? { |e| e == 2 }
puts list.any? { |e| e == 5 }
filtered_list = list.filter { |e| e.even? }
puts filtered_list.inspect {|e| e.even?}
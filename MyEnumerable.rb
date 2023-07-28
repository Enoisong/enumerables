module MyEnumerable
  def all?
    flag = true
    each do |n|
      flag = false unless yield n
    end
    flag
  end
end
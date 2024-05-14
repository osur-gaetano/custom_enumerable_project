module Enumerable
  # Your code goes here
  def my_all?
    check = false
    self.my_each do |element|
      if yield(element)
        check = true
      else
        check = false
      end
    end
    return check
  end
end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  # Define my_each here
  def my_each
    self.each do |element|
      yield element
    end
  end

end

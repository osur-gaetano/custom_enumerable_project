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

  def my_none?
    self.my_each do |element|
      unless yield(element)
        return true
      else
        return false
      end
    end
  end

  def my_select
    selected_elements = []
    self.my_each do |element|
      if yield element
        selected_elements << element
      end
    end
    selected_elements
  end

  def my_map(&block)
    altered_array= []
    if block_given?
      self.each do |element|
        altered_array << block.call(element)
      end
    end
    altered_array
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

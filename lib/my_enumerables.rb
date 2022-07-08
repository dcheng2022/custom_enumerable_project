module Enumerable
  # Your code goes here
  def my_each_with_index
    length.times { |idx| yield(self[idx], idx) } if block_given?

    self
  end
end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  # Define my_each here
  def my_each
    length.times { |idx| yield(self[idx]) } if block_given?

    self
  end
end

module Enumerable
  # Your code goes here
  def my_each_with_index
    length.times { |idx| yield(self[idx], idx) } if block_given?

    self
  end

  def my_select
    pass_condition = []
    if block_given?
      for element in self
        pass_condition << element if yield(element)
      end
    end
    pass_condition
  end

  def my_all?
    for element in self
      return false unless yield(element)
    end
    true
  end

  def my_any?
    for element in self
      return true if yield(element)
    end
    false
  end

  def my_none?
    for element in self
      return false if yield(element)
    end
    true
  end

  def my_count
    count = 0
    if block_given?
      for element in self
        count += 1 if yield(element)
      end
      return count
    end
    length
  end

  def my_map(&symbol)
    mapped_array = []
    if block_given?
      for element in self
        mapped_array << yield(element)
      end
    end
    mapped_array
  end
end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  # Define my_each here
  def my_each
    for element in self
      yield(element) if block_given?
    end

    self
  end
end

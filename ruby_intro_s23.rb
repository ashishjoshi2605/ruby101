require 'set'
# Part 1
def two_sum?(a, n)
  # ADD YOUR CODE HERE
  index_value_map = Set.new
  a.each { |value|
    remaining = n - value
    return true if index_value_map === remaining
    index_value_map.add(value) }

  return false
end

def max_sub_array(a)
  # ADD YOUR CODE HERE
end

def group_anagrams(a)
  # ADD YOUR CODE HERE
end

# Part 2
def brackets_match?(s)
  # ADD YOUR CODE HERE
end

def remove_and_append_vowels(s)
  # ADD YOUR CODE HERE
end

def highest_frequency_word(s)
  # ADD YOUR CODE HERE
end

# Part 3
class Book
  # ADD YOUR CODE HERE
end
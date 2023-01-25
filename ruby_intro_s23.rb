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
  max_sum = a[0]
  current_sum = a[0]

  (1...a.length).each { |i|
    current_sum = [a[i], a[i] + current_sum].max
    max_sum = [current_sum, max_sum].max
  }
  return max_sum
end

def group_anagrams(a)
  # ADD YOUR CODE HERE
  solution = a.group_by {|word| word.chars.sort }.values
  return solution
end

# Part 2
def brackets_match?(string)
  # ADD YOUR CODE HERE
  stack = []

  string.each_char do |char|
    if MAPPING.key?(char)
      stack << MAPPING[char]
    else
      current_open = stack.pop
      return false unless char == current_open
    end
  end

  stack.empty?
end

MAPPING = {
  '(' => ')',
  '{' => '}',
  '[' => ']'
}.freeze

def remove_and_append_vowels(s)
  # ADD YOUR CODE HERE
  n = s.length
  (0...n).each do |i|
    if s[i] == 'u' or s[i] == 'o' or s[i] == 'i' or s[i] == 'e' or s[i] == 'a' or s[i] == 'U' or s[i] == 'O' or s[i] == 'I' or s[i] == 'E' or s[i] == 'A' 
      s=s+s[i]
      s[i]="0"
    end
  s.tr('0','')
  return s
end

# def highest_frequency_word(s)
#   # ADD YOUR CODE HERE
# end

# # Part 3
# class Book
#   # ADD YOUR CODE HERE
# end

puts brackets_match("{[]}")
end
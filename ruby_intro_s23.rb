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
def brackets_match?(s)
  # ADD YOUR CODE HERE
  stack = []

  s.each_char do |c|
    if BRACKETS.key?(c)
      stack << BRACKETS[c]
    else
      open_bracket = stack.pop
      return false unless c == open_bracket
    end
  end

  stack.empty?
end

BRACKETS = {
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
  end
  s.delete! "0"
  return s
end

def highest_frequency_word(s)
  # ADD YOUR CODE HERE
  words = s.downcase.split(/\W+/)
  frequency = Hash.new(0)
  words.each { |word| frequency[word] += 1 }
  max_app = 0
  max_word = []
  frequency.each do |key , value|
    if value > max_app 
      max_app = value
      max_word = [key]
    elsif value == max_app
      max_word.append(key)
    end
  end
  if max_word.length == 1
    return max_word[0]
  end
  i = words.length
  max_word.each do |word|
    i = [words.find_index(word), i].min
  end
  return words[i]
end

# # Part 3
# class Book
#   # ADD YOUR CODE HERE
# end

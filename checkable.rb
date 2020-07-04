module Checkable

  # we assume the strings are correctly swapped then we iterate over each character with
  # an index. When the current index is even, unless the current character on string A
  # is placed on an even index on string B AND the strings are still considered correctly
  # swapped (accumulator pattern), we break out of the iteration by returning false.
  # Respectively, the same rule is applied when it is an odd index
  def correctly_swapped?(str_a, str_b)
    correctly_swapped = true
    str_a.chars.each_with_index do |char, index|
      if index.even?
        return false unless correctly_swapped && indexes_of(char, str_b).any? { |i| i.even? }
      else
        return false unless correctly_swapped && indexes_of(char, str_b).any? { |i| i.odd? }
      end
    end
    correctly_swapped
  end

  # returns array of indexes for a given char in a given string
  # or empty array if given char is not present in given string
  def indexes_of(char, str)
    indexes = []
    str.chars.each_with_index do |current_char, index|
      indexes << index if current_char.eql?(char)
    end
    indexes
  end

end

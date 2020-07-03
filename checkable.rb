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
        return false unless correctly_swapped && str_b.index(char).even?
      else
        return false unless correctly_swapped && str_b.index(char).odd?
      end
    end
    correctly_swapped
  end

end

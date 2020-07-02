module Swappable

  def swap_even(str)
    str.chars.each_with_index do |char, index|
      if index.even? && index+2 < str.length
        str = swap(str, char, index)
      end
    end
    str
  end

  def swap_odd(str)
    str.chars.each_with_index do |char, index|
      if index.odd? && index+2 < str.length
        str = swap(str, char, index)
      end
    end
    str
  end

  def swap(str, char, index)
    temp = char
    str[index] = str[index+2]
    str[index+2] = temp
    str
  end

end

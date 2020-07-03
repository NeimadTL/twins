module Checkable

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

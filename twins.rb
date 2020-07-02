require_relative "swappable"

class Twins
  extend Swappable

  def self.do_twin_check(array_a, array_b)
    result = []
    array_a.each_with_index do |str_a, index|
      str_b = array_b[index]
      if str_a.length != str_b.length
        result << 'NO'
      else
        new_str_a = swap_even(str_a)
        if new_str_a.eql?(str_b)
          result << 'YES'
        elsif swap_odd(new_str_a).eql?(str_b)
          result << 'YES'
        else
          result << 'NO'
        end
      end
    end
    result.to_s
  end

end

puts Twins::do_twin_check(["abcd","abcd", "abc"],["cdab", "bcda", "ab"])

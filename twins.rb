require_relative "swappable"

class Twins
  extend Swappable

  class << self
    def do_twin_check(array_a, array_b)
      result = []
      array_a.each_with_index do |str_a, index|
        str_b = array_b[index]
        if str_a.length != str_b.length
          result << 'NO'
        elsif str_a.eql?(str_b)
          result << 'YES'
        else
          result.concat(perform_swap_ops(str_a, str_b))
        end
      end
      result.to_s
    end

    private
      def perform_swap_ops(str_a, str_b)
        result = []
        new_str_a = swap_even(str_a)
        if new_str_a.eql?(str_b)
          result << 'YES'
        elsif swap_odd(new_str_a).eql?(str_b)
          result << 'YES'
        else
          result << 'NO'
        end
        result
      end
  end

end

puts Twins::do_twin_check(["abcd","abcd", "abc", "abcd"],["cdab", "bcda", "ab", "abcd"])

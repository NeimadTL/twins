require_relative "checkable"

class Twins
  extend Checkable

  class << self
    def do_twin_check(array_a, array_b)
      result = []
      array_a.each_with_index do |str_a, index|
        str_b = array_b[index]
        if str_a.length != str_b.length
          result << 'NO'
        else
          result << check_operations(str_a, str_b)
        end
      end
      result.to_s
    end

    private
      def check_operations(str_a, str_b)
        correctly_swapped?(str_a, str_b) ? 'YES' : 'NO'
      end
  end

end

puts Twins::do_twin_check(
  ["abcd","abcd", "abc", "abcd", "abcde", "damien"],
  ["cdab", "bcda", "ab", "abcd", "ebadc", "madein"]
)

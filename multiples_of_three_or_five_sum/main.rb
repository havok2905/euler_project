module ProjectEuler
  module MultiplesOfThreeAndFiveSum
    def self.test_project
      digits = (0..999).to_a
      multiple_of_three_or_five_sum digits
    end

    private

    def self.multiple_of_three_or_five_sum(digits)
      multiples = digits.select { |digit|  multiple_of_three_or_five?(digit) }
      multiples.reduce(:+)
    end

    def self.multiple_of_three_or_five?(x)
      multiple_of_three?(x) || multiple_of_five?(x)
    end

    def self.multiple_of_three?(x)
      x % 3 == 0
    end

    def self.multiple_of_five?(x)
      x % 5 == 0
    end
  end
end

puts ProjectEuler::MultiplesOfThreeAndFiveSum.test_project

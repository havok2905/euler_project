require 'prime'

module ProjectEuler
  module LargestPrimeFactor

    def self.test_project
      start_num = 600851475143
      puts find_largest_prime_factor(start_num, start_num)
    end

    def self.find_largest_prime_factor(start_num, current_largest_factor)
      smallest_prime = smallest_factor current_largest_factor
      other = other_factor current_largest_factor, smallest_prime
      return other if Prime.prime?(other)
      find_largest_prime_factor start_num, other
    end

    def self.other_factor(num, smallest_prime)
      num / smallest_prime
    end

    def self.smallest_factor(num)
      smallest_factor = 0
      for x in (2..num)
        if num % x == 0
          smallest_factor = x
          break
        end
      end
      smallest_factor
    end
  end
end

ProjectEuler::LargestPrimeFactor.test_project

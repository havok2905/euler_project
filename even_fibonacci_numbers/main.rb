module ProjectEuler
  module EvenFibonacciNumbers
    def self.test_project
      sum = 0
      fib_prev = 1
      fib = 2

      while fib < 4000000 do
        if fib % 2 == 0
          sum += fib
        end

        fib_prev_temp = fib
        fib = fib + fib_prev
        fib_prev = fib_prev_temp

      end

      puts sum

    end
  end
end

ProjectEuler::EvenFibonacciNumbers.test_project

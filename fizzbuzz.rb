
class FizzBuzz
  MATCHED = true
  FIZZ = 'Fizz'
  BUZZ = 'Buzz'
  FIZZ_NUMBER = 3
  BUZZ_NUMBER = 5

  def initialize(number)
    @number = number
  end

  def translate
    translations = {
      is_fizz? => FIZZ,
      is_buzz? => BUZZ,
      is_fizzbuzz? => FIZZ + BUZZ,
      non_fizzbuzz? => non_fizzbuzz_number
    }

    translations[MATCHED]
  end

  private

  def is_fizzbuzz?
    is_fizz? && is_buzz?
  end

  def non_fizzbuzz?
    !is_fizz? && !is_buzz?
  end

  def is_fizz?
    is?(FIZZ_NUMBER)
  end

  def is_buzz?
    is?(BUZZ_NUMBER)
  end

  def is?(number)
    @number.modulo(number).zero?
  end

  def non_fizzbuzz_number
    @number.to_s
  end
end

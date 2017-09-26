require_relative '../fizzbuzz'

describe 'FizzBuzz' do
  it 'does not translates a non fizzbuzz number' do
    non_fizzbuzz_number = 1
    fizzbuzz = FizzBuzz.new(non_fizzbuzz_number)

    translation = fizzbuzz.translate

    expect(translation).to eq('1')
  end

  it 'translates a fizz number to Fizz' do
    fizz_number = 3
    fizzbuzz = FizzBuzz.new(fizz_number)

    translation = fizzbuzz.translate

    expect(translation).to eq('Fizz')
  end

  it 'translates a buzz number to Buzz' do
    buzz_number = 5
    fizzbuzz = FizzBuzz.new(buzz_number)

    translation = fizzbuzz.translate

    expect(translation).to eq('Buzz')
  end

  it 'translates a fizzbuzz number to FizzBuzz' do
    fizz_number = 3
    buzz_number = 5
    fizzbuzz_number = fizz_number * buzz_number
    fizzbuzz = FizzBuzz.new(fizzbuzz_number)

    translation = fizzbuzz.translate

    expect(translation).to eq('FizzBuzz')
  end
end

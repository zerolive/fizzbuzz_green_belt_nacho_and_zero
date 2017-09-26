require_relative 'fizzbuzz'

class FizzBuzzList
  def initialize(list)
    @list = list
  end

  def translate
    @list.map do |item|
      FizzBuzz.new(item).translate
    end
  end
end

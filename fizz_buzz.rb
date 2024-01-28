def is_fizz(num:)
  return num % 3 == 0 ? 0b1 : 0b0
end

def is_buzz(num:)
  return num % 5 == 0 ? 0b1 : 0b0
end

def fizz_buzz(max:)
  (1..max).each do |num|
    case (is_fizz(num: num) + is_buzz(num: num) * 2)
    in 0b11
      puts "#{num} is FizzBuzz"
    in 0b10
      puts "#{num} is Buzz"
    in 0b01
      puts "#{num} is Fizz"
    else
      puts num
    end
  end
end

fizz_buzz(max: 50)

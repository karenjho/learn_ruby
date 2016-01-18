def sum(numbers)
  numbers.inject(0) do |sum, number|
    sum + number
  end
end

def add(number_1, number_2)
  number_1 + number_2
end

def subtract(number_1, number_2)
  number_1 - number_2
end

def multiply(numbers)
  numbers.inject(1) do |product, number|
    product * number
  end
end

def factorial(number)
  (1..number).to_a.inject(:*)
end

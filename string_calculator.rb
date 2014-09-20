require 'pry'

class StringCalculator

  def calculate(input_string)
    @input_string = input_string
    
    result = @input_string
    operators.each do |operator, value|
      return value.call.to_s if input_string.include? operator
    end
    result.to_s
  end

  def operators
    {
      "+" => lambda { sum },
      "*" => lambda { multiplication },
      "/" => lambda { division },
      "-" => lambda { subtraction }
    }
  end

  def sum
    operands = @input_string.split("+")
    first_part = calculate(operands.first)
    second_part = calculate(operands.last)
    first_part.to_i + second_part.to_i
  end

  def multiplication
    operands = @input_string.split("*")
    operands.first.to_i * operands.last.to_i
  end

  def division
    operands = @input_string.split("/")
    operands.first.to_i / operands.last.to_i
  end

  def subtraction
    operands = @input_string.split("-")
    operands.first.to_i - operands.last.to_i
  end

end
class StringCalculator

  def calculate(input_string)

    operations = {
      "+" => lambda { sum },
      "*" => lambda { multiplication },
      "/" => lambda { division },
      "-" => lambda { subtraction }
    }
    @input_string = input_string
    @result = @input_string
    operations.each do |operator, value|
      value.call if input_string.include? operator
    end
    @result.to_s

  end

  def sum
    operands = @input_string.split("+")
    @result = operands.first.to_i + operands.last.to_i
  end

  def multiplication
    operands = @input_string.split("*")
    @result = operands.first.to_i * operands.last.to_i
  end

  def division
    operands = @input_string.split("/")
    @result = operands.first.to_i / operands.last.to_i
  end

  def subtraction
    operands = @input_string.split("-")
    @result = operands.first.to_i - operands.last.to_i
  end

end
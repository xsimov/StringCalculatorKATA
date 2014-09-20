class StringCalculator

  def calculate(input_string)
    @input_string = input_string
    if @input_string.include? "+"
      sum
    elsif @input_string.include? "*"
      multiplication
    else
      @result = @input_string
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

end
class StringCalculator

  def calculate(input_string)
    if input_string.include? "+"
      operands = input_string.split("+")
      result = operands.first.to_i + operands.last.to_i
    elsif input_string.include? "*"
      operands = input_string.split("*")
      result = operands.first.to_i * operands.last.to_i
    else
      result = input_string
    end
    result.to_s
  end

end
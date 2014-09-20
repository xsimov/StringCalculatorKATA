class StringCalculator

  def calculate(input_string)
    return input_string unless input_string.include?("+")
    operands = input_string.split("+")
    result = operands[0].to_i + operands[1].to_i  
    result.to_s
  end

end
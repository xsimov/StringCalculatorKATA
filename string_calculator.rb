class StringCalculator

  def calculate(input_string)
    unless input_string.include?("+")
      result = input_string
    else
      result = input_string[0].to_i + input_string[2].to_i  
      result.to_s
    end
  end

end
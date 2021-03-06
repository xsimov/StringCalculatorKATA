require_relative '../string_calculator'

describe "string calculator" do
  it "outputs nothing if input is nothing" do
    expect(StringCalculator.new.calculate("")).to eq("")
  end

  it "outputs the same input if its a number" do
    expect(StringCalculator.new.calculate("43")).to eq("43")
    expect(StringCalculator.new.calculate("22")).to eq("22")
  end

  it "outputs the result of an one digit sum" do
    expect(StringCalculator.new.calculate("1+2")).to eq("3")
  end

  it "outputs the result of two digit number sum" do
    expect(StringCalculator.new.calculate("11+12")).to eq("23")
  end

  it "outputs the result of a multiplication" do
    expect(StringCalculator.new.calculate("2*3")).to eq("6")
  end

  it "outputs the result of a division" do
    expect(StringCalculator.new.calculate("2/2")).to eq("1")
  end

  it "outputs the result of a substraction" do
    expect(StringCalculator.new.calculate("17-9")).to eq("8")
  end

  it "output the result of sum and substraction" do
    expect(StringCalculator.new.calculate("5+5-2")).to eq("8")
  end

  it "output the result of substraction and sum" do
    expect(StringCalculator.new.calculate("5-5+2")).to eq("2")
  end  

  it "output the result of two substractions" do
    expect(StringCalculator.new.calculate("5-3-1")).to eq("1")
  end 

end
require_relative '../string_calculator'

describe "string calculator" do
  it "outputs nothing if input is nothing" do
    expect(StringCalculator.new.calculate("")).to eq("")
  end

  it "outputs the same input if its a number" do
    expect(StringCalculator.new.calculate("43")).to eq("43")
    expect(StringCalculator.new.calculate("22")).to eq("22")
  end

  it "outputs the result of an input sum" do
    expect(StringCalculator.new.calculate("1+2")).to eq("3")
  end

end
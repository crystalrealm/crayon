require "spec"
require "../src/crayon"

describe Crayon do
  it "just works" do
    cyanOnBlack = Crayon::Crayon.new("light_cyan", "black", {
      "bold" => true,
    })
    isBold = cyanOnBlack.bold
    isInverted = cyanOnBlack.invert
    isUnderlined = cyanOnBlack.underline
    isHidden = cyanOnBlack.hidden

    background = cyanOnBlack.background
    foreground = cyanOnBlack.foreground

    isBold.should eq(true)
    isInverted.should eq(false)
    isUnderlined.should eq(false)
    isHidden.should eq(false)

    foreground.should eq("light_cyan")
    background.should eq("black")
  end
end

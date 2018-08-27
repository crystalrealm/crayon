# TODO: Write documentation for `Crayon`
require "./crayon/*"

module Crayon
  VERSION = "0.1.0"

  class Crayon
    getter foreground, background, bold, underline, hidden, invert
    setter foreground, background, bold, underline, hidden, invert

    @bold : String | Bool | Nil
    @underline : String | Bool | Nil
    @hidden : String | Bool | Nil
    @invert : String | Bool | Nil

    def initialize(@foreground : String, @background : String, *options)
      if !options.empty?
        options = options.at(0)
        @bold = options.fetch("bold", false)
        @underline = options.fetch("underline", false)
        @hidden = options.fetch("hidden", false)
        @invert = options.fetch("invert", false)
      end
    end

    def apply(text)
      reset = "\033[0m"
      formattingOptions = [] of String
      formattingOptions.push("#{@bold ? COLORS["bold"] : ""}")
      formattingOptions.push("#{@underline ? COLORS["underline"] : ""}")
      formattingOptions.push("#{@hidden ? COLORS["hidden"] : ""}")
      formattingOptions.push("#{@invert ? COLORS["invert"] : ""}")
      optionString = formattingOptions.join
      colors = "#{COLORS["fg_#{@foreground}"]}#{COLORS["bg_#{@background}"]}"
      "#{optionString}#{colors}#{text}#{reset}"
    end
  end
end

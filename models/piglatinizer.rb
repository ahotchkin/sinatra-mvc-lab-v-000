class PigLatinizer
  attr_reader :text

  def initialize
    @text = text
  end

  def piglatinize(text)
    text[/([aeiou].*)/] + text[/([bcdfghjklmnpqrstvwxyz]*)/] + "ay"
    #  text.scan(/[aeoui]/).count
    # if text.length > 1
    #   text[1..-1]+text[0]+"ay"
    # else
    #   text+"way"
    # end

  end

  def split_sentence
    words = text.split(" ")
  end
end

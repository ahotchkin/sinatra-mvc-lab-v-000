class PigLatinizer
  attr_reader :text

  def initialize
    @text = text
  end

  def split_sentence
    @words = text.split(" ")
  end

  def piglatinize(words)
    # text[/([aeiou].*)/] + text[/([bcdfghjklmnpqrstvwxyz]*)/] + "ay"
    #  text.scan(/[aeoui]/).count
    if text.length > 1 && text[/([AEIOUaeiou]*)/] == ""
      text[/([AEIOUaeiou].*)/] + text[/([BCDFGHJKLMNPQRSTVWXYZbcdfghjklmnpqrstvwxyz]*)/] + "ay"
    else
      text+"way"
    end

  end


end

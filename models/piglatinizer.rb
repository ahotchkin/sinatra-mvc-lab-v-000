class PigLatinizer
  attr_reader :text

  def initialize
    @text = text
  end



  def piglatinize(text)
    # text[/([aeiou].*)/] + text[/([bcdfghjklmnpqrstvwxyz]*)/] + "ay"
    #  text.scan(/[aeoui]/).count
    if text.length > 1 && text[/([AEIOUaeiou]*)/] == ""
      text[/([AEIOUaeiou].*)/] + text[/([BCDFGHJKLMNPQRSTVWXYZbcdfghjklmnpqrstvwxyz]*)/] + "ay"
    else
      text+"way"
    end

  end

  def split_sentence(text)
    @words = text.split(" ")
  end

end

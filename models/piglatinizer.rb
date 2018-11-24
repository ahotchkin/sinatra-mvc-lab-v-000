class PigLatinizer
  attr_reader :text

  def initialize
    @text = text
  end



  def piglatinize(words)
    # text[/([aeiou].*)/] + text[/([bcdfghjklmnpqrstvwxyz]*)/] + "ay"
    #  text.scan(/[aeoui]/).count
    if @words.length > 1 && @words[/([AEIOUaeiou]*)/] == ""
      @words[/([AEIOUaeiou].*)/] + @words[/([BCDFGHJKLMNPQRSTVWXYZbcdfghjklmnpqrstvwxyz]*)/] + "ay"
    else
      @words+"way"
    end

  end

  def split_sentence(text)
    @words = text.split(" ")
  end

end

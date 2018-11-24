class PigLatinizer
  attr_reader :text

  def initialize
    @text = text
  end

  # def split_sentence(text)
  #   @words = text.split(" ")
  # end

  def piglatinize(text)
    # text[/([aeiou].*)/] + text[/([bcdfghjklmnpqrstvwxyz]*)/] + "ay"
    #  text.scan(/[aeoui]/).count
    words = text.split(" ")
    words.each do |word|
      if word.length > 1 && word[/([AEIOUaeiou]*)/] == ""
        word[/([AEIOUaeiou].*)/] + word[/([BCDFGHJKLMNPQRSTVWXYZbcdfghjklmnpqrstvwxyz]*)/] + "ay"
      else
        word+"way"
      end
    end

    words.join(", ")

  end



end

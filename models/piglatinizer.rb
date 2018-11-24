class PigLatinizer
  attr_reader :text

  def initialize
    @text = text
  end

  # def split_sentence(text)
  #   @words = text.split(" ")
  # end

  def piglatinize(text)
    words = text.split(" ")
    words.map do |word|
      if word.length > 1 && word[/([AEIOUaeiou]*)/] == ""
        word[/([AEIOUaeiou].*)/] + word[/([BCDFGHJKLMNPQRSTVWXYZbcdfghjklmnpqrstvwxyz]*)/] + "ay"
      else
        word+"way"
      end
      words.join(" ")
    end



  end



end

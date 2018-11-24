class PigLatinizer
  attr_reader :text

  def initialize
    @text = text
  end

  def piglatinize(text)
    # is this the best way to do this??
    words = text.split(" ")
    updated_words = []
    words.each do |word|
      if word.length == 2 && word[/([AEIOUaeiou]*)/] == ""
        new_word = word[/([AEIOUYaeiouy].*)/] + word[/([BCDFGHJKLMNPQRSTVWXZbcdfghjklmnpqrstvwxz]*)/] + "ay"
      elsif word.length > 1 && word[/([AEIOUaeiou]*)/] == ""
        new_word = word[/([AEIOUaeiou].*)/] + word[/([BCDFGHJKLMNPQRSTVWXYZbcdfghjklmnpqrstvwxyz]*)/] + "ay"
      else
        new_word = word+"way"
      end
      updated_words << new_word
    end
    updated_words.join(" ")
  end



end

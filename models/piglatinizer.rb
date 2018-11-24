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
        updated_words << new_word
      elsif word.length > 1 && word[/([AEIOUaeiou]*)/] == ""
        new_word = word[/([AEIOUaeiou].*)/] + word[/([BCDFGHJKLMNPQRSTVWXYZbcdfghjklmnpqrstvwxyz]*)/] + "ay"
        updated_words << new_word
      else
        new_word = word+"way"
        updated_words << new_word
      end
    end

    updated_words.join(" ")

  end



end

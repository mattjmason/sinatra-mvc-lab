class PigLatinizer

def piglatinize(user_input)
    user_input.split(" ").map{ |word| piglatinize_word(word)}.join(" ")

end

def vowel?(char)
    char.match(/[aAeEiIoOuU]/)
  end

  def piglatinize_word(word)
    if vowel?(word[0])
      word + "way"
    else
      vowel_index = word.index(/[aAeEiIoOuU]/)
      consonants = word.slice(0..vowel_index-1)
      word_leftover = word.slice(vowel_index..word.length)
      word_leftover + consonants + "ay"
    end
  end


end
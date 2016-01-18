def translate(phrase)
  alphabet = ("a".."z").to_a
  vowels = [ "a","e","i","o","u" ]
  consonants = alphabet - vowels

  result = phrase.split(" ").map do |word|
    if word[0..1] == "qu"
      word_length = word.length
      rest_of_word = word[2..word_length]
      rest_of_word + "qu" + "ay"
    elsif word[0..2] == "squ"
      word_length = word.length
      rest_of_word = word[3..word_length]
      rest_of_word + "squ" + "ay"
    elsif consonants.include?(word[0]) && consonants.include?(word[1]) && consonants.include?(word[2])
      word_length = word.length
      phoneme = word[0..2]
      rest_of_word = word[3..word_length]
      rest_of_word + phoneme + "ay"
    elsif consonants.include?(word[0]) && consonants.include?(word[1])
      word_length = word.length
      phoneme = word[0..1]
      rest_of_word = word[2..word_length]
      rest_of_word + phoneme + "ay"
    elsif consonants.include?(word[0])
      word_length = word.length
      consonant = word[0].to_s
      rest_of_word = word[1..word_length]
      rest_of_word + consonant + "ay"
    else
      word + "ay"
    end
  end
  result.join(" ")
end

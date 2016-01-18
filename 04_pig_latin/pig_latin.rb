def translate(phrase)
  alphabet = ("a".."z").to_a
  vowels = [ "a","e","i","o","u" ]
  consonants = alphabet - vowels
  qu = [ "qu" ]

  result = phrase.split(" ").map do |word|
    if consonants.include?(word.split("")[0]) && consonants.include?(word.split("")[1]) && consonants.include?(word.split("")[2])
      word_length = word.length
      phoneme = word.split("")[0..2].join("")
      rest_of_word = word.split("")[3..word_length].join("")
      rest_of_word + phoneme + "ay"
    elsif consonants.include?(word.split("")[0]) && consonants.include?(word.split("")[1])
      word_length = word.length
      phoneme = word.split("")[0..1].join("")
      rest_of_word = word.split("")[2..word_length].join("")
      rest_of_word + phoneme + "ay"
    else
      word + "ay"
    end
  end
  result.join(" ")
end

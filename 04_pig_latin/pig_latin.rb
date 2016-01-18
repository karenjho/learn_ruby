def translate(phrase)
  alphabet = ("a".."z").to_a
  vowels = [ "a","e","i","o","u" ]
  consonants = alphabet - vowels
  qu = [ "qu" ]

  result = phrase.split(" ").map do |word|
    word + "ay"
  end
  result.join(" ")
end

def echo(phrase)
  phrase.to_s
end

def start_of_word(phrase, num = 1)
  phrase[0..(num-1)]
end

def repeat(phrase, num = 2)
  num.times.collect { phrase }.join(" ")
end

def shout(phrase)
  phrase.to_s.upcase
end

def titleize(phrase)
  words_no_cap = [ "the", "over", "and" ]
  words = phrase.capitalize.split(" ")
  result = words.map do |word|
    if words_no_cap.include?(word)
      word
    else
      word.capitalize
    end
  end
  result.join(" ")
end

def first_word(phrase)
  phrase.split(" ")[0]
end

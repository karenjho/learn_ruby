def echo(phrase)
  phrase.to_s
end

def start_of_word(phrase, num = 1)
  array_phrase = Array.new(phrase.split(""))
  array_phrase[(0..(num-1))].join("")
end

def repeat(phrase, num = 2)
  result = []
  num.times do result << phrase
  end
  result.join(" ")
end

def shout(phrase)
  phrase.to_s.upcase
end

def titleize(phrase)

end

def first_word(phrase)

end

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

end

def first_word(phrase)

end

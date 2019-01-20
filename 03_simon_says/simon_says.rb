#write your code here
def echo(val) 
    return val
end
def shout(val)
    return val.upcase
end
def repeat(val, *args)
    string = val
    if(args.any?)
        n = args.at(0)
        (1..n-1).each do |v|
            string = string + " #{val}"
        end
    else
        string = "#{val} #{val}"
    end
    return string
end
def start_of_word(word,i)
    return word[0,i]
end
def first_word(phrase)
    return phrase.split(" ").first
end
def titleize(s)
    words = s.split.map do |word|
        if %w(the and over).include?(word)
          word
        else
          word.capitalize
        end
      end
      words.first.capitalize!
    words.join(" ")
end

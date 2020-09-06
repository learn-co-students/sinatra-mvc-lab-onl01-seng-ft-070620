class PigLatinizer

    def vowel(character)
        character.match(/[aeiouAEIOU]/)
    end

    def piglatinize(word)
        word.gsub!(/[^a-z0-9\s]/i, '')
        if word.split(" ").length == 1
            piglatinize_word(word)
        else
            to_pig_latin(word)
        end
    end
  
    def piglatinize_word(word)
        if vowel(word[0])
            "#{word}way"
        elsif !vowel(word[0]) && !vowel(word[1]) && !vowel(word[2])
            word = word.slice(3..-1) + word.slice(0, 3)
            "#{word}ay"
        elsif !vowel(word[0]) && !vowel(word[1])
            word = word.slice(2..-1) + word.slice(0, 2)
            "#{word}ay"
        elsif !vowel(word[0])
            word = word.slice(1..-1) + word.slice(0)
            "#{word}ay"
        end
    end

    def to_pig_latin(words)
      result = words.split(" ").map do |word|
        piglatinize(word)
      end
      result.join(" ")
    end
  end
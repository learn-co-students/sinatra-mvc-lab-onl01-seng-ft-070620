class PigLatinizer

    def initialize
    end

    def piglatinize(phrase)

        sep_words = phrase.split(" ")
        
        pig_words = sep_words.collect do |word|
            single_word_piglatinize(word)
        end
        pig_words.join(" ")
    end

    def single_word_piglatinize(word)
        letter_array = word.split("")
        
        if vowel? (word[0])
            letter_array << "w"

        elsif !vowel?(word[0]) && !vowel?(word[1]) && !vowel?(word[2])
            3.times { letter_array << letter_array.shift }

        elsif !vowel?(word[0]) && !vowel?(word[1])
            2.times { letter_array << letter_array.shift }            
        else
            letter_array << letter_array.shift
        end
        letter_array.join + "ay"
    end

    def vowel?(letter)
        letter.downcase.match(/[aeoui]/)
    end

end
